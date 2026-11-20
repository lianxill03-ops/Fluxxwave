<#
.SYNOPSIS
Renders the Fluxxwave mark into the executable icon and the window icon.

.DESCRIPTION
Places assets/brand/fluxxwave-mark-1024.png, the gradient mark rendered 1024 px
wide from assets/brand/fluxxwave-mark-gradient.svg, on a transparent canvas
with the mark filling most of the tile's width, so the taskbar and title bar
show a glyph like every other Windows app rather than an opaque square. Writes
resources/atlas.ico with the standard 16 to 256 px frames as PNG entries and
assets/brand/atlas-icon-256.png for the window icon.

System.Drawing cannot read SVG, so after changing the mark render the SVG to
the 1024 px PNG again with any SVG renderer (for example `resvg -w 1024`), then
rerun this; build.rs embeds the .ico at compile time.
#>
[CmdletBinding()]
param(
    [double]$Fill = 0.94
)
$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.Drawing

$root = Split-Path -Parent $PSScriptRoot
$mark = [System.Drawing.Image]::FromFile((Join-Path $root 'assets/brand/fluxxwave-mark-1024.png'))

function New-Frame([int]$size) {
    $frame = New-Object System.Drawing.Bitmap $size, $size, ([System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
    $g = [System.Drawing.Graphics]::FromImage($frame)
    $g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
    $g.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
    $g.Clear([System.Drawing.Color]::Transparent)
    # The mark is wider than it is tall: fit its width and centre it.
    $width = $size * $Fill
    $height = $width * $mark.Height / $mark.Width
    $g.DrawImage($mark, [single](($size - $width) / 2), [single](($size - $height) / 2), [single]$width, [single]$height)
    $g.Dispose()
    return $frame
}

function Get-Png([System.Drawing.Bitmap]$bitmap) {
    $stream = New-Object System.IO.MemoryStream
    $bitmap.Save($stream, [System.Drawing.Imaging.ImageFormat]::Png)
    return $stream.ToArray()
}

$sizes = 16, 20, 24, 32, 48, 64, 256
$frames = [System.Collections.Generic.List[byte[]]]::new()
foreach ($size in $sizes) { $frames.Add((Get-Png (New-Frame $size))) }
$mark.Dispose()

# ICO: header, one 16-byte directory entry per frame, then the PNG data.
$ico = New-Object System.IO.MemoryStream
$writer = New-Object System.IO.BinaryWriter $ico
$writer.Write([uint16]0); $writer.Write([uint16]1); $writer.Write([uint16]$sizes.Count)
$offset = 6 + 16 * $sizes.Count
for ($i = 0; $i -lt $sizes.Count; $i++) {
    $dimension = [byte]($(if ($sizes[$i] -ge 256) { 0 } else { $sizes[$i] }))
    $writer.Write($dimension); $writer.Write($dimension)
    $writer.Write([byte]0); $writer.Write([byte]0)
    $writer.Write([uint16]1); $writer.Write([uint16]32)
    $writer.Write([uint32]$frames[$i].Length); $writer.Write([uint32]$offset)
    $offset += $frames[$i].Length
}
foreach ($frame in $frames) { $writer.Write($frame) }
$writer.Flush()
[System.IO.File]::WriteAllBytes((Join-Path $root 'resources/atlas.ico'), $ico.ToArray())
[System.IO.File]::WriteAllBytes((Join-Path $root 'assets/brand/atlas-icon-256.png'), $frames[$frames.Count - 1])
Write-Host "Wrote resources/atlas.ico ($($sizes -join ', ') px) and assets/brand/atlas-icon-256.png"
