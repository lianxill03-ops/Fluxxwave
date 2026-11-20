<#
.SYNOPSIS
Opens Fluxxwave Manager's pages one after another and saves a screenshot of each.

.DESCRIPTION
For reviewing the look of the app on a machine that is not yours to click
through, such as a CI runner. It needs a debug build: every page past Home is
shown through the debug review previews (see README.md, "Review flags and
variables"), whose package is a stand-in, so nothing is downloaded, updated,
restarted or installed. Each launch keeps its settings in a throwaway folder
through ATLAS_APP_DATA, never the real app data, and is ended once captured.

Writes <page>-<language>-<theme>.png to -OutDir. When a window never appears,
the whole screen is saved as <page>-<language>-<theme>-screen.png instead and
the app's log is printed, so the reason can be seen. Fails when no page at all
could be captured.
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)][string]$Executable,
    [Parameter(Mandatory = $true)][string]$OutDir,
    [string[]]$Languages = @('ko', 'en-GB'),
    [string[]]$Themes = @('dark', 'light'),
    # Time for the first frame, fonts and the release check before the picture.
    [int]$SettleSeconds = 6,
    [int]$WindowTimeoutSeconds = 90
)
$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.Drawing
Add-Type -AssemblyName System.Windows.Forms
Add-Type @"
using System;
using System.Runtime.InteropServices;
public static class PageCapture {
    [StructLayout(LayoutKind.Sequential)] public struct RECT { public int Left, Top, Right, Bottom; }
    [DllImport("dwmapi.dll")] public static extern int DwmGetWindowAttribute(IntPtr hwnd, int attr, out RECT rect, int size);
    [DllImport("user32.dll")] public static extern bool GetWindowRect(IntPtr hwnd, out RECT rect);
    [DllImport("user32.dll")] public static extern bool PrintWindow(IntPtr hwnd, IntPtr hdc, uint flags);
    [DllImport("user32.dll")] public static extern bool SetForegroundWindow(IntPtr hwnd);
}
"@

$Executable = (Resolve-Path -LiteralPath $Executable).Path
$OutDir = (New-Item -ItemType Directory -Force -Path $OutDir).FullName

# What each picture shows. A preview names its own page, so it takes no --page.
$pages = @(
    @{ Name = 'home'; Arguments = @('--page', 'home'); Environment = @{} }
    @{ Name = 'settings'; Arguments = @('--page', 'settings'); Environment = @{} }
    @{ Name = 'ready'; Arguments = @(); Environment = @{ ATLAS_PREPARATION_PREVIEW = 'idle' } }
    @{ Name = 'choices'; Arguments = @(); Environment = @{ ATLAS_PREPARATION_PREVIEW = 'options-choose-again-defender' } }
    @{ Name = 'security'; Arguments = @(); Environment = @{ ATLAS_PREPARATION_PREVIEW = 'security-on' } }
    @{ Name = 'install'; Arguments = @(); Environment = @{ ATLAS_PREPARATION_PREVIEW = 'install-ready' } }
    @{ Name = 'installed'; Arguments = @(); Environment = @{ ATLAS_PREPARATION_PREVIEW = 'installed-update-off' } }
    @{ Name = 'report'; Arguments = @('--page', 'report'); Environment = @{ ATLAS_REPORT_PREVIEW = 'ready' } }
    @{ Name = 'iso'; Arguments = @('--page', 'iso'); Environment = @{} }
)

# True when every sampled pixel is the same colour: PrintWindow drew nothing.
function Test-Blank([System.Drawing.Bitmap]$bitmap) {
    $first = $bitmap.GetPixel([int]($bitmap.Width / 2), [int]($bitmap.Height / 2)).ToArgb()
    foreach ($fx in 0.1, 0.3, 0.5, 0.7, 0.9) {
        foreach ($fy in 0.1, 0.3, 0.5, 0.7, 0.9) {
            if ($bitmap.GetPixel([int]($bitmap.Width * $fx), [int]($bitmap.Height * $fy)).ToArgb() -ne $first) { return $false }
        }
    }
    return $true
}

function Save-Screen([string]$path) {
    $screen = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds
    $bitmap = New-Object System.Drawing.Bitmap $screen.Width, $screen.Height
    $graphics = [System.Drawing.Graphics]::FromImage($bitmap)
    $graphics.CopyFromScreen($screen.Left, $screen.Top, 0, 0, $bitmap.Size)
    $graphics.Dispose()
    $bitmap.Save($path, [System.Drawing.Imaging.ImageFormat]::Png)
    $bitmap.Dispose()
}

# The window through PrintWindow, cropped to its visible frame; the same area
# copied from the screen when PrintWindow drew nothing.
function Save-Window([IntPtr]$hwnd, [string]$path) {
    $full = New-Object PageCapture+RECT
    [void][PageCapture]::GetWindowRect($hwnd, [ref]$full)
    $visible = New-Object PageCapture+RECT
    $status = [PageCapture]::DwmGetWindowAttribute($hwnd, 9, [ref]$visible, [Runtime.InteropServices.Marshal]::SizeOf($visible))  # DWMWA_EXTENDED_FRAME_BOUNDS
    if ($status -ne 0 -or $visible.Right -le $visible.Left -or $visible.Bottom -le $visible.Top) { $visible = $full }
    $width = $full.Right - $full.Left
    $height = $full.Bottom - $full.Top
    if ($width -le 0 -or $height -le 0) { throw 'the window has no size' }

    $bitmap = New-Object System.Drawing.Bitmap $width, $height
    $graphics = [System.Drawing.Graphics]::FromImage($bitmap)
    $hdc = $graphics.GetHdc()
    [void][PageCapture]::PrintWindow($hwnd, $hdc, 2)  # PW_RENDERFULLCONTENT
    $graphics.ReleaseHdc($hdc)
    $graphics.Dispose()
    $crop = New-Object System.Drawing.Rectangle ($visible.Left - $full.Left), ($visible.Top - $full.Top), ($visible.Right - $visible.Left), ($visible.Bottom - $visible.Top)
    $picture = $bitmap.Clone($crop, $bitmap.PixelFormat)
    $bitmap.Dispose()
    $method = 'PrintWindow'
    if (Test-Blank $picture) {
        $picture.Dispose()
        [void][PageCapture]::SetForegroundWindow($hwnd)
        Start-Sleep -Milliseconds 500
        $picture = New-Object System.Drawing.Bitmap $crop.Width, $crop.Height
        $graphics = [System.Drawing.Graphics]::FromImage($picture)
        $graphics.CopyFromScreen($visible.Left, $visible.Top, 0, 0, $picture.Size)
        $graphics.Dispose()
        $method = 'screen copy'
    }
    $blank = Test-Blank $picture
    $picture.Save($path, [System.Drawing.Imaging.ImageFormat]::Png)
    $size = "$($picture.Width) x $($picture.Height)"
    $picture.Dispose()
    return [pscustomobject]@{ Method = $method; Size = $size; Blank = $blank }
}

$captured = 0
$failed = 0
foreach ($language in $Languages) {
    foreach ($theme in $Themes) {
        foreach ($page in $pages) {
            $name = "$($page.Name)-$language-$theme"
            $data = Join-Path ([IO.Path]::GetTempPath()) "fluxxwave-capture-$([guid]::NewGuid().ToString('N'))"
            [void](New-Item -ItemType Directory -Force -Path $data)
            Set-Content -LiteralPath (Join-Path $data 'settings.json') -Value "{`"theme`":`"$theme`"}" -Encoding utf8

            $start = New-Object System.Diagnostics.ProcessStartInfo $Executable
            $start.UseShellExecute = $false
            $start.WorkingDirectory = Split-Path -Parent $Executable
            foreach ($argument in @($page.Arguments) + @('--language', $language)) { $start.ArgumentList.Add($argument) }
            $start.Environment['ATLAS_APP_DATA'] = $data
            foreach ($variable in $page.Environment.GetEnumerator()) { $start.Environment[$variable.Key] = $variable.Value }

            $process = [System.Diagnostics.Process]::Start($start)
            try {
                $deadline = (Get-Date).AddSeconds($WindowTimeoutSeconds)
                while ((Get-Date) -lt $deadline) {
                    $process.Refresh()
                    if ($process.HasExited -or $process.MainWindowHandle -ne [IntPtr]::Zero) { break }
                    Start-Sleep -Milliseconds 500
                }
                if ($process.HasExited) {
                    throw "the app exited with code $($process.ExitCode) before a window appeared"
                }
                if ($process.MainWindowHandle -eq [IntPtr]::Zero) {
                    throw "no window appeared within $WindowTimeoutSeconds seconds"
                }
                Start-Sleep -Seconds $SettleSeconds
                $result = Save-Window $process.MainWindowHandle (Join-Path $OutDir "$name.png")
                if ($result.Blank) {
                    Write-Host "::warning::$name is one flat colour ($($result.Method), $($result.Size)); the window may not have drawn."
                } else {
                    $captured++
                }
                Write-Host "$name : $($result.Size) by $($result.Method)$(if ($result.Blank) { ', blank' })"
            } catch {
                $failed++
                Write-Host "::warning::$name was not captured: $($_.Exception.Message)"
                try { Save-Screen (Join-Path $OutDir "$name-screen.png") } catch { Write-Host "  the screen could not be copied either: $($_.Exception.Message)" }
                Get-ChildItem -LiteralPath $data -Recurse -File -Filter '*.log' -ErrorAction SilentlyContinue | ForEach-Object {
                    Write-Host "  --- $($_.Name)"
                    Get-Content -LiteralPath $_.FullName -Tail 30 | ForEach-Object { Write-Host "  $_" }
                }
            } finally {
                if (-not $process.HasExited) {
                    try { $process.Kill($true) } catch { Write-Host "  could not end $name : $($_.Exception.Message)" }
                    [void]$process.WaitForExit(10000)
                }
                $process.Dispose()
                Remove-Item -LiteralPath $data -Recurse -Force -ErrorAction SilentlyContinue
            }
        }
    }
}

Write-Host "Captured $captured page(s); $failed could not be captured. Pictures are in $OutDir"
if ($captured -eq 0) { throw 'No page could be captured.' }
