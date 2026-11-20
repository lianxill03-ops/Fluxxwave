# Fluxxwave mode: a small, fixed set of Windows settings that cut background
# activity, applied with one switch and put back exactly as they were with the
# other. It works on a Windows 11 PC as it is: it does not need Fluxxwave
# installed, and it installs and removes nothing.
#
# Turning the mode on first records what it is about to change (whether each
# registry value existed, its type and data; the service's start type and
# whether it was running; the active power plan), then applies the settings.
# Turning it off puts each recorded value back and deletes the record. Turning
# it on again while a record exists re-applies the settings and keeps the first
# record, so "off" always returns to what the PC had before the mode was first
# turned on.
#
# The record only says how things were. Which registry values, which service
# and which power plan are touched comes from the list in this file, on the way
# back too, so a record that was edited or planted cannot point the
# administrator half of the script at anything else.
#
# The per-user settings (HKCU) are changed from the user's own session. The
# machine settings need an administrator, so a run that is not elevated does the
# user half itself and starts an elevated copy of this script for the rest.
#
# Exit codes: 0 done, 2 something could not be changed or put back,
# 3 administrator permission was not given, so the machine half was left alone.
# 1 is PowerShell's own, for a script that could not run at all.
#
# This file is plain ASCII on purpose: Windows PowerShell 5.1 reads a script
# without a byte-order mark in the PC's own code page, so the Korean menu text
# is written as \u escapes.
param(
    [ValidateSet('On', 'Off', 'Status', 'Menu')][string]$State = 'Menu',
    # The elevated half of a run that was started from the user's own session.
    [switch]$MachineOnly,
    [switch]$FunctionsOnly
)
# The elevated copy must never autoload a module from an inherited user path.
$env:PSModulePath = [IO.Path]::Combine($PSHOME, 'Modules')
$ErrorActionPreference = 'Stop'

# Every setting the mode changes. Each has an exact way back and takes effect
# without a restart. All but the power plan use the values Atlas's own toggles
# set; Atlas builds a power plan of its own, where this only switches to one
# Windows already has.
function Get-FluxxwaveModeSettings {
    return @(
        # Store apps stop running in the background (Atlas: Background Apps).
        @{ Id = 'background-apps'; Scope = 'User'; Kind = 'Registry'; Path = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications'; Name = 'GlobalUserDisabled'; Data = 1 }
        # Windows protects this value on some builds, so it may be left as it is.
        @{ Id = 'background-apps-search'; Scope = 'User'; Kind = 'Registry'; Path = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search'; Name = 'BackgroundAppGlobalToggle'; Data = 0; Optional = $true }
        # No background game recording: the two capture switches out of Atlas's
        # FSO and Game Bar toggle. Game Bar itself and fullscreen optimizations
        # are left alone.
        @{ Id = 'game-dvr'; Scope = 'User'; Kind = 'Registry'; Path = 'HKCU:\System\GameConfigStore'; Name = 'GameDVR_Enabled'; Data = 0 }
        @{ Id = 'game-capture'; Scope = 'User'; Kind = 'Registry'; Path = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR'; Name = 'AppCaptureEnabled'; Data = 0 }
        # Updates come from Microsoft only, not shared with other PCs (Atlas: Delivery Optimization).
        @{ Id = 'delivery-optimization'; Scope = 'Machine'; Kind = 'Registry'; Path = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization'; Name = 'DODownloadMode'; Data = 0 }
        # The search indexer is stopped and kept from starting (Atlas: Search Indexing).
        @{ Id = 'search-indexing'; Scope = 'Machine'; Kind = 'Service'; Name = 'WSearch' }
        # From Balanced or Power saver to the Windows High performance plan, when
        # this PC has it. A plan the user picked or made is left alone, and no
        # plan is created.
        @{ Id = 'power-plan'; Scope = 'Machine'; Kind = 'PowerPlan'; Scheme = '8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c'; From = @('381b4222-f694-41f0-9685-ff5bb260df2e', 'a1841308-3541-4fab-bc81-f71556f20b4a') }
    )
}

function Get-FluxxwaveModeRecordPath {
    param([ValidateSet('User', 'Machine')][string]$Scope)
    # Asked of Windows, not read from an environment variable a caller can set.
    $folder = if ($Scope -eq 'User') { 'LocalApplicationData' } else { 'CommonApplicationData' }
    return (Join-Path ([Environment]::GetFolderPath($folder)) "Fluxxwave\Mode\$($Scope.ToLowerInvariant()).json")
}

# The items of a record as hashtables, or none when that half of the mode is off.
function Read-FluxxwaveModeRecord {
    param([string]$Path)
    if (-not (Test-Path -LiteralPath $Path)) { return @() }
    $record = [IO.File]::ReadAllText($Path, [Text.Encoding]::UTF8) | ConvertFrom-Json
    if ($record.Schema -ne 1) { throw "The record at $Path was written by a different version of this script." }
    $items = @()
    foreach ($entry in @($record.Items)) {
        if ($null -eq $entry) { continue }
        $item = @{}
        foreach ($property in $entry.PSObject.Properties) { $item[$property.Name] = $property.Value }
        $items += $item
    }
    return $items
}

function Write-FluxxwaveModeRecord {
    param([string]$Path, [string]$Scope, [object[]]$Items)
    $directory = Split-Path -Parent $Path
    if (-not (Test-Path -LiteralPath $directory)) { [void](New-Item -ItemType Directory -Path $directory -Force -ErrorAction Stop) }
    $json = @{ Schema = 1; Scope = $Scope; Items = @($Items) } | ConvertTo-Json -Depth 6
    [IO.File]::WriteAllText($Path, $json, (New-Object Text.UTF8Encoding($false)))
}

function Test-FluxxwaveAdministrator {
    $identity = [Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = New-Object Security.Principal.WindowsPrincipal($identity)
    return $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

# Runs a tool from the Windows system folder and returns its exit code and
# output, without letting its error text become a PowerShell error.
function Invoke-FluxxwaveNative {
    param([string]$Name, [string[]]$ArgumentList)
    $start = New-Object System.Diagnostics.ProcessStartInfo
    # The folder as Windows reports it, not as an environment variable says.
    $start.FileName = [IO.Path]::Combine([Environment]::SystemDirectory, $Name)
    $start.Arguments = ($ArgumentList -join ' ')
    $start.UseShellExecute = $false
    $start.CreateNoWindow = $true
    $start.RedirectStandardOutput = $true
    $start.RedirectStandardError = $true
    $process = [System.Diagnostics.Process]::Start($start)
    try {
        $errorText = $process.StandardError.ReadToEndAsync()
        $output = $process.StandardOutput.ReadToEnd()
        $process.WaitForExit()
        return @{ ExitCode = $process.ExitCode; Output = $output; Error = $errorText.Result }
    } finally {
        $process.Dispose()
    }
}

# The registry hive and the key under it for a path such as HKCU:\Software\Example.
function Split-FluxxwaveRegistryPath {
    param([string]$Path)
    $parts = $Path -split ':\\', 2
    $root = switch ($parts[0]) {
        'HKCU' { [Microsoft.Win32.Registry]::CurrentUser }
        'HKLM' { [Microsoft.Win32.Registry]::LocalMachine }
        default { throw "Not a registry path this script works with: $Path." }
    }
    return @{ Root = $root; SubKey = $parts[1] }
}

# Whether a registry value exists, and its type and data if it does.
function Get-FluxxwaveRegistryState {
    param([string]$Path, [string]$Name)
    $found = @{ KeyExisted = $false; Existed = $false; ValueKind = $null; Data = $null }
    $location = Split-FluxxwaveRegistryPath -Path $Path
    $key = $location.Root.OpenSubKey($location.SubKey)
    if ($null -eq $key) { return $found }
    try {
        $found.KeyExisted = $true
        if ($key.GetValueNames() -notcontains $Name) { return $found }
        $value = $key.GetValue($Name, $null, [Microsoft.Win32.RegistryValueOptions]::DoNotExpandEnvironmentNames)
        $found.Existed = $true
        $found.ValueKind = $key.GetValueKind($Name).ToString()
        $found.Data = $value
        # Bytes are kept as text, which is what the record file can hold.
        if ($value -is [byte[]]) { $found.Data = [Convert]::ToBase64String($value) }
        return $found
    } finally {
        $key.Dispose()
    }
}

# Writes a registry value with the given type, creating its key when missing.
function Set-FluxxwaveRegistryData {
    param([string]$Path, [string]$Name, [string]$ValueKind, $Data)
    $kind = [Microsoft.Win32.RegistryValueKind]$ValueKind
    $location = Split-FluxxwaveRegistryPath -Path $Path
    $key = $location.Root.CreateSubKey($location.SubKey)
    try {
        switch ($kind.ToString()) {
            'DWord' { $key.SetValue($Name, [int]$Data, $kind) }
            'QWord' { $key.SetValue($Name, [long]$Data, $kind) }
            'MultiString' { $key.SetValue($Name, [string[]]@($Data), $kind) }
            { $_ -in @('Binary', 'None') } { $key.SetValue($Name, [Convert]::FromBase64String([string]$Data), $kind) }
            default { $key.SetValue($Name, [string]$Data, $kind) }
        }
    } finally {
        $key.Dispose()
    }
}

# Puts a registry value back: its old type and data, or gone again, together
# with the key if the mode created it and nothing else is in it.
function Restore-FluxxwaveRegistryValue {
    param([string]$Path, [string]$Name, [hashtable]$Item)
    if ($Item.Existed) {
        Set-FluxxwaveRegistryData -Path $Path -Name $Name -ValueKind ([string]$Item.ValueKind) -Data $Item.Data
        return
    }
    $location = Split-FluxxwaveRegistryPath -Path $Path
    $key = $location.Root.OpenSubKey($location.SubKey, $true)
    if ($null -eq $key) { return }
    try {
        $key.DeleteValue($Name, $false)
        $empty = ($key.ValueCount -eq 0 -and $key.SubKeyCount -eq 0)
    } finally {
        $key.Dispose()
    }
    if ($empty -and -not $Item.KeyExisted) { $location.Root.DeleteSubKey($location.SubKey, $false) }
}

function Get-FluxxwaveServiceState {
    param([string]$Name)
    $service = Get-CimInstance -ClassName Win32_Service -Filter "Name='$Name'" -ErrorAction SilentlyContinue
    if (-not $service) { return @{ Present = $false; StartMode = $null; Delayed = $false; Running = $false } }
    $startMode = [string]$service.StartMode
    # Only an automatic service can be delayed; on any other the flag is a leftover.
    $delayed = $false
    if ($startMode -eq 'Auto') {
        $delayed = ((Get-FluxxwaveRegistryState -Path "HKLM:\SYSTEM\CurrentControlSet\Services\$Name" -Name 'DelayedAutostart').Data -eq 1)
    }
    return @{ Present = $true; StartMode = $startMode; Delayed = $delayed; Running = ($service.State -eq 'Running') }
}

function Set-FluxxwaveServiceStart {
    param([string]$Name, [string]$StartMode, [bool]$Delayed)
    $start = switch ($StartMode) {
        'Auto' { if ($Delayed) { 'delayed-auto' } else { 'auto' } }
        'Manual' { 'demand' }
        'Disabled' { 'disabled' }
        default { throw "Service $Name has a start type this script does not set: $StartMode." }
    }
    $result = Invoke-FluxxwaveNative -Name 'sc.exe' -ArgumentList @('config', $Name, 'start=', $start)
    if ($result.ExitCode -ne 0) { throw "sc.exe could not set $Name to start '$start' (exit code $($result.ExitCode))." }
}

# The active power plan and every plan this PC has, as lowercase GUIDs.
function Get-FluxxwavePowerSchemes {
    $pattern = '[0-9a-fA-F]{8}(?:-[0-9a-fA-F]{4}){3}-[0-9a-fA-F]{12}'
    $schemes = @{ Active = $null; All = @() }
    $active = Invoke-FluxxwaveNative -Name 'powercfg.exe' -ArgumentList @('/getactivescheme')
    if ($active.ExitCode -eq 0) {
        $match = [regex]::Match($active.Output, $pattern)
        if ($match.Success) { $schemes.Active = $match.Value.ToLowerInvariant() }
    }
    $list = Invoke-FluxxwaveNative -Name 'powercfg.exe' -ArgumentList @('/list')
    if ($list.ExitCode -eq 0) {
        $schemes.All = @([regex]::Matches($list.Output, $pattern) | ForEach-Object { $_.Value.ToLowerInvariant() })
    }
    return $schemes
}

function Set-FluxxwavePowerScheme {
    param([string]$Scheme)
    $result = Invoke-FluxxwaveNative -Name 'powercfg.exe' -ArgumentList @('/setactive', $Scheme)
    return ($result.ExitCode -eq 0)
}

# What one setting is now, in the shape the record keeps.
function Get-FluxxwaveModeSnapshot {
    param([hashtable]$Setting)
    $item = @{ Id = $Setting.Id; Applied = $false; Outcome = ''; Message = '' }
    switch ($Setting.Kind) {
        'Registry' {
            $found = Get-FluxxwaveRegistryState -Path $Setting.Path -Name $Setting.Name
            foreach ($name in @('KeyExisted', 'Existed', 'ValueKind', 'Data')) { $item[$name] = $found[$name] }
        }
        'Service' {
            $found = Get-FluxxwaveServiceState -Name $Setting.Name
            foreach ($name in @('Present', 'StartMode', 'Delayed', 'Running')) { $item[$name] = $found[$name] }
        }
        'PowerPlan' { $item.Previous = (Get-FluxxwavePowerSchemes).Active }
        default { throw "Unknown kind of setting: $($Setting.Kind)." }
    }
    return $item
}

# Whether the PC still has what the record says, so there is nothing to undo.
function Test-FluxxwaveModeUnchanged {
    param([hashtable]$Setting, [hashtable]$Item)
    try {
        $now = Get-FluxxwaveModeSnapshot -Setting $Setting
    } catch {
        return $false
    }
    foreach ($name in @($now.Keys)) {
        if ($name -in @('Id', 'Applied', 'Outcome', 'Message')) { continue }
        if ((@($now[$name]) -join "`n") -ne (@($Item[$name]) -join "`n")) { return $false }
    }
    return $true
}

# Applies one setting. Returns $true when it was applied and $false when this
# PC has nothing to apply it to.
function Set-FluxxwaveModeSetting {
    param([hashtable]$Setting)
    switch ($Setting.Kind) {
        'Registry' {
            Set-FluxxwaveRegistryData -Path $Setting.Path -Name $Setting.Name -ValueKind 'DWord' -Data $Setting.Data
            return $true
        }
        'Service' {
            $service = Get-FluxxwaveServiceState -Name $Setting.Name
            if (-not $service.Present) { return $false }
            Set-FluxxwaveServiceStart -Name $Setting.Name -StartMode 'Disabled' -Delayed $false
            if ($service.Running) { Stop-Service -Name $Setting.Name -Force -WarningAction SilentlyContinue -ErrorAction Stop }
            return $true
        }
        'PowerPlan' {
            $schemes = Get-FluxxwavePowerSchemes
            if ($schemes.All -notcontains $Setting.Scheme) { return $false }
            # Already there: going back to the recorded plan then changes nothing.
            if ($schemes.Active -eq $Setting.Scheme) { return $true }
            # Only away from the Windows plans that save power.
            if ($Setting.From -notcontains $schemes.Active) { return $false }
            if (-not (Set-FluxxwavePowerScheme -Scheme $Setting.Scheme)) {
                throw 'powercfg.exe could not switch to the High performance plan.'
            }
            return $true
        }
        default { throw "Unknown kind of setting: $($Setting.Kind)." }
    }
}

# Puts one setting back as the record says it was.
function Restore-FluxxwaveModeSetting {
    param([hashtable]$Setting, [hashtable]$Item)
    switch ($Setting.Kind) {
        'Registry' { Restore-FluxxwaveRegistryValue -Path $Setting.Path -Name $Setting.Name -Item $Item }
        'Service' {
            if (-not $Item.Present) { return }
            Set-FluxxwaveServiceStart -Name $Setting.Name -StartMode ([string]$Item.StartMode) -Delayed ([bool]$Item.Delayed)
            # The start type is back either way; a service that will not start
            # now starts by itself at the next sign-in or restart.
            if ($Item.Running) { Start-Service -Name $Setting.Name -WarningAction SilentlyContinue -ErrorAction SilentlyContinue }
        }
        'PowerPlan' {
            $previous = [guid]::Empty
            if ([guid]::TryParse([string]$Item.Previous, [ref]$previous) -and (Set-FluxxwavePowerScheme -Scheme $previous.ToString('D'))) { return }
            # The plan that was active is unknown or has been deleted since:
            # Balanced is the Windows default.
            if (-not (Set-FluxxwavePowerScheme -Scheme '381b4222-f694-41f0-9685-ff5bb260df2e')) {
                throw 'powercfg.exe could not switch back to the previous power plan or to Balanced.'
            }
        }
        default { throw "Unknown kind of setting: $($Setting.Kind)." }
    }
}

# Turns one half of the mode on. Returns one result per setting:
# Outcome is Changed, Skipped or Failed.
function Enable-FluxxwaveModeScope {
    param(
        [ValidateSet('User', 'Machine')][string]$Scope,
        [object[]]$Settings = (Get-FluxxwaveModeSettings),
        [string]$RecordPath = (Get-FluxxwaveModeRecordPath -Scope $Scope)
    )
    $wanted = @($Settings | Where-Object { $_.Scope -eq $Scope })
    $items = @(Read-FluxxwaveModeRecord -Path $RecordPath)
    # Record first, so a run that is interrupted can still be undone. A setting
    # the mode has already changed keeps its first, original values.
    foreach ($setting in $wanted) {
        $known = @($items | Where-Object { $_.Id -eq $setting.Id })
        if ($known.Count -gt 0 -and $known[0].Applied) { continue }
        $items = @($items | Where-Object { $_.Id -ne $setting.Id }) + (Get-FluxxwaveModeSnapshot -Setting $setting)
    }
    Write-FluxxwaveModeRecord -Path $RecordPath -Scope $Scope -Items $items

    $results = @()
    foreach ($setting in $wanted) {
        $item = @($items | Where-Object { $_.Id -eq $setting.Id })[0]
        $outcome = 'Skipped'
        $message = ''
        try {
            if (Set-FluxxwaveModeSetting -Setting $setting) {
                $item.Applied = $true
                $outcome = 'Changed'
            }
        } catch {
            $message = $_.Exception.Message
            if (-not $setting.Optional) { $outcome = 'Failed' }
            # A change that stopped halfway still has to be undone.
            if (-not (Test-FluxxwaveModeUnchanged -Setting $setting -Item $item)) { $item.Applied = $true }
        }
        $item.Outcome = $outcome
        $item.Message = $message
        $results += @{ Id = $setting.Id; Outcome = $outcome; Message = $message }
    }
    Write-FluxxwaveModeRecord -Path $RecordPath -Scope $Scope -Items $items
    return $results
}

# Turns one half of the mode off. The record is deleted once everything in it
# is back; a setting that could not be put back stays in it for the next try.
function Disable-FluxxwaveModeScope {
    param(
        [ValidateSet('User', 'Machine')][string]$Scope,
        [object[]]$Settings = (Get-FluxxwaveModeSettings),
        [string]$RecordPath = (Get-FluxxwaveModeRecordPath -Scope $Scope)
    )
    if (-not (Test-Path -LiteralPath $RecordPath)) { return @() }
    $results = @()
    $left = @()
    foreach ($item in @(Read-FluxxwaveModeRecord -Path $RecordPath)) {
        if (-not $item.Applied) {
            $results += @{ Id = $item.Id; Outcome = 'Skipped'; Message = '' }
            continue
        }
        try {
            # What to put back comes from this script's own list, never from the record.
            $setting = @($Settings | Where-Object { $_.Scope -eq $Scope -and $_.Id -eq $item.Id })
            if ($setting.Count -eq 0) { throw "This version of the script does not have the setting '$($item.Id)'." }
            Restore-FluxxwaveModeSetting -Setting $setting[0] -Item $item
            $results += @{ Id = $item.Id; Outcome = 'Restored'; Message = '' }
        } catch {
            $item.Outcome = 'Failed'
            $item.Message = $_.Exception.Message
            $left += $item
            $results += @{ Id = $item.Id; Outcome = 'Failed'; Message = $item.Message }
        }
    }
    if ($left.Count -eq 0) {
        Remove-Item -LiteralPath $RecordPath -Force -ErrorAction Stop
    } else {
        Write-FluxxwaveModeRecord -Path $RecordPath -Scope $Scope -Items $left
    }
    return $results
}

# On, Off, or Partial when only one half has a record.
function Get-FluxxwaveModeStatus {
    $user = Test-Path -LiteralPath (Get-FluxxwaveModeRecordPath -Scope 'User')
    $machine = Test-Path -LiteralPath (Get-FluxxwaveModeRecordPath -Scope 'Machine')
    if ($user -and $machine) { return 'On' }
    if ($user -or $machine) { return 'Partial' }
    return 'Off'
}

function Get-FluxxwaveModeText {
    param([string]$Key)
    $texts = @{
        Title = @('Fluxxwave mode', 'Fluxxwave \uBAA8\uB4DC')
        StatusOn = @('Fluxxwave mode is ON.', 'Fluxxwave \uBAA8\uB4DC\uAC00 \uCF1C\uC838 \uC788\uC2B5\uB2C8\uB2E4.')
        StatusOff = @('Fluxxwave mode is OFF.', 'Fluxxwave \uBAA8\uB4DC\uAC00 \uAEBC\uC838 \uC788\uC2B5\uB2C8\uB2E4.')
        StatusPartial = @('Fluxxwave mode is partly on. Turn it off to put everything back, or on to apply the rest.', 'Fluxxwave \uBAA8\uB4DC\uAC00 \uC77C\uBD80\uB9CC \uCF1C\uC838 \uC788\uC2B5\uB2C8\uB2E4. \uB044\uBA74 \uBAA8\uB450 \uC6D0\uB798\uB300\uB85C \uB3CC\uC544\uAC00\uACE0, \uCF1C\uBA74 \uB098\uBA38\uC9C0\uAC00 \uC801\uC6A9\uB429\uB2C8\uB2E4.')
        MenuOn = @('[1] Turn on', '[1] \uCF1C\uAE30')
        MenuOff = @('[2] Turn off (put everything back)', '[2] \uB044\uAE30(\uBAA8\uB450 \uC6D0\uB798\uB300\uB85C)')
        MenuQuit = @('[3] Close', '[3] \uB2EB\uAE30')
        Prompt = @('Choose 1, 2 or 3', '1, 2, 3 \uC911\uC5D0\uC11C \uC120\uD0DD\uD558\uC138\uC694')
        TurningOn = @('Turning Fluxxwave mode on...', 'Fluxxwave \uBAA8\uB4DC\uB97C \uCF1C\uB294 \uC911...')
        TurningOff = @('Turning Fluxxwave mode off...', 'Fluxxwave \uBAA8\uB4DC\uB97C \uB044\uB294 \uC911...')
        NeedsAdmin = @('Windows will now ask for administrator permission to change the machine settings.', '\uC2DC\uC2A4\uD15C \uC124\uC815\uC744 \uBC14\uAFB8\uAE30 \uC704\uD574 Windows\uAC00 \uAD00\uB9AC\uC790 \uAD8C\uD55C\uC744 \uC694\uCCAD\uD569\uB2C8\uB2E4.')
        Declined = @('Administrator permission was not given, so the machine settings were left as they are.', '\uAD00\uB9AC\uC790 \uAD8C\uD55C\uC774 \uC2B9\uC778\uB418\uC9C0 \uC54A\uC544 \uC2DC\uC2A4\uD15C \uC124\uC815\uC740 \uADF8\uB300\uB85C \uB450\uC5C8\uC2B5\uB2C8\uB2E4.')
        MachineFailed = @('The administrator half did not finish, so some machine settings may be unchanged. Run this again to retry.', '\uAD00\uB9AC\uC790 \uAD8C\uD55C \uC791\uC5C5\uC774 \uB05D\uB098\uC9C0 \uC54A\uC544 \uC77C\uBD80 \uC2DC\uC2A4\uD15C \uC124\uC815\uC774 \uADF8\uB300\uB85C\uC77C \uC218 \uC788\uC2B5\uB2C8\uB2E4. \uB2E4\uC2DC \uC2E4\uD589\uD574 \uBCF4\uC138\uC694.')
        Changed = @('applied', '\uC801\uC6A9\uB428')
        Restored = @('put back', '\uB418\uB3CC\uB9BC')
        Skipped = @('skipped', '\uAC74\uB108\uB700')
        Failed = @('FAILED', '\uC2E4\uD328')
        Close = @('Press Enter to close.', '\uB2EB\uC73C\uB824\uBA74 Enter \uD0A4\uB97C \uB204\uB974\uC138\uC694.')
        'background-apps' = @('Background apps', '\uBC31\uADF8\uB77C\uC6B4\uB4DC \uC571')
        'background-apps-search' = @('Background apps (search)', '\uBC31\uADF8\uB77C\uC6B4\uB4DC \uC571(\uAC80\uC0C9)')
        'game-dvr' = @('Game DVR background recording', '\uAC8C\uC784 DVR \uBC31\uADF8\uB77C\uC6B4\uB4DC \uB179\uD654')
        'game-capture' = @('Game capture', '\uAC8C\uC784 \uCEA1\uCC98')
        'delivery-optimization' = @('Delivery Optimization (sharing updates with other PCs)', '\uC804\uC1A1 \uCD5C\uC801\uD654(\uB2E4\uB978 PC\uC640 \uC5C5\uB370\uC774\uD2B8 \uACF5\uC720)')
        'search-indexing' = @('Search indexing service', '\uAC80\uC0C9 \uC0C9\uC778 \uC11C\uBE44\uC2A4')
        'power-plan' = @('High performance power plan', '\uACE0\uC131\uB2A5 \uC804\uC6D0 \uAD00\uB9AC \uC635\uC158')
    }
    $pair = $texts[$Key]
    if (-not $pair) { return $Key }
    # Korean when either the display language or the regional format is Korean.
    if ((Get-UICulture).Name -like 'ko*' -or (Get-Culture).Name -like 'ko*') { return [regex]::Unescape($pair[1]) }
    return $pair[0]
}

function Write-FluxxwaveModeResults {
    param([object[]]$Results)
    foreach ($result in $Results) {
        $line = "  $(Get-FluxxwaveModeText -Key $result.Id): $(Get-FluxxwaveModeText -Key $result.Outcome)"
        if ($result.Outcome -eq 'Failed') {
            Write-Host "$line ($($result.Message))" -ForegroundColor Red
        } else {
            Write-Host $line
        }
    }
}

# Starts this script again as administrator for the machine half and returns
# its exit code, or 3 when the permission prompt was declined.
function Start-FluxxwaveModeElevated {
    param([ValidateSet('On', 'Off')][string]$State)
    $arguments = "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" -State $State -MachineOnly"
    try {
        $process = Start-Process -FilePath (Join-Path $PSHOME 'powershell.exe') -ArgumentList $arguments -Verb RunAs -WindowStyle Hidden -Wait -PassThru
    } catch {
        return 3
    }
    return $process.ExitCode
}

# What the elevated copy did, worked out from the machine record before and
# after it ran: it has no window of its own to say so.
function Get-FluxxwaveModeElevatedResults {
    param([ValidateSet('On', 'Off')][string]$State, [object[]]$Before, [object[]]$After)
    $results = @()
    if ($State -eq 'On') {
        foreach ($item in @($After | Where-Object { $_.Outcome })) {
            $results += @{ Id = $item.Id; Outcome = [string]$item.Outcome; Message = [string]$item.Message }
        }
        return $results
    }
    foreach ($item in $Before) {
        $kept = @($After | Where-Object { $_.Id -eq $item.Id })
        if ($kept.Count -gt 0) {
            $results += @{ Id = $item.Id; Outcome = 'Failed'; Message = [string]$kept[0].Message }
        } elseif ($item.Applied) {
            $results += @{ Id = $item.Id; Outcome = 'Restored'; Message = '' }
        } else {
            $results += @{ Id = $item.Id; Outcome = 'Skipped'; Message = '' }
        }
    }
    return $results
}

# Turns the mode on or off and returns the exit code. -Quiet is the elevated
# copy, which has no window to write to.
function Invoke-FluxxwaveMode {
    param(
        [ValidateSet('On', 'Off')][string]$State,
        [switch]$MachineOnly,
        [switch]$Quiet
    )
    $failed = $false
    $declined = $false
    $scopes = @()
    if (-not $MachineOnly) { $scopes += 'User' }
    if (Test-FluxxwaveAdministrator) { $scopes += 'Machine' }
    foreach ($scope in $scopes) {
        $results = @(if ($State -eq 'On') { Enable-FluxxwaveModeScope -Scope $scope } else { Disable-FluxxwaveModeScope -Scope $scope })
        if (-not $Quiet) { Write-FluxxwaveModeResults -Results $results }
        if (@($results | Where-Object { $_.Outcome -eq 'Failed' }).Count -gt 0) { $failed = $true }
    }
    if ($scopes -notcontains 'Machine') {
        $machinePath = Get-FluxxwaveModeRecordPath -Scope 'Machine'
        # Nothing to put back means no reason to ask for permission.
        if ($State -eq 'On' -or (Test-Path -LiteralPath $machinePath)) {
            $before = @(Read-FluxxwaveModeRecord -Path $machinePath)
            if (-not $Quiet) { Write-Host (Get-FluxxwaveModeText -Key 'NeedsAdmin') }
            $elevated = Start-FluxxwaveModeElevated -State $State
            if ($elevated -eq 3) {
                $declined = $true
                if (-not $Quiet) { Write-Host (Get-FluxxwaveModeText -Key 'Declined') -ForegroundColor Yellow }
            } elseif ($elevated -eq 0 -or $elevated -eq 2) {
                if ($elevated -eq 2) { $failed = $true }
                $after = @(Read-FluxxwaveModeRecord -Path $machinePath)
                if (-not $Quiet) { Write-FluxxwaveModeResults -Results @(Get-FluxxwaveModeElevatedResults -State $State -Before $before -After $after) }
            } else {
                $failed = $true
                if (-not $Quiet) { Write-Host (Get-FluxxwaveModeText -Key 'MachineFailed') -ForegroundColor Red }
            }
        }
    }
    if ($failed) { return 2 }
    if ($declined) { return 3 }
    return 0
}

function Write-FluxxwaveModeStatus {
    $key = switch (Get-FluxxwaveModeStatus) { 'On' { 'StatusOn' } 'Partial' { 'StatusPartial' } default { 'StatusOff' } }
    Write-Host (Get-FluxxwaveModeText -Key $key)
}

function Show-FluxxwaveModeMenu {
    Write-Host (Get-FluxxwaveModeText -Key 'Title')
    Write-Host ''
    Write-FluxxwaveModeStatus
    Write-Host ''
    Write-Host (Get-FluxxwaveModeText -Key 'MenuOn')
    Write-Host (Get-FluxxwaveModeText -Key 'MenuOff')
    Write-Host (Get-FluxxwaveModeText -Key 'MenuQuit')
    $choice = Read-Host (Get-FluxxwaveModeText -Key 'Prompt')
    $code = 0
    if ($choice -eq '1') {
        Write-Host (Get-FluxxwaveModeText -Key 'TurningOn')
        $code = Invoke-FluxxwaveMode -State 'On'
    } elseif ($choice -eq '2') {
        Write-Host (Get-FluxxwaveModeText -Key 'TurningOff')
        $code = Invoke-FluxxwaveMode -State 'Off'
    } else {
        return 0
    }
    Write-Host ''
    Write-FluxxwaveModeStatus
    [void](Read-Host (Get-FluxxwaveModeText -Key 'Close'))
    return $code
}

if (-not $FunctionsOnly) {
    switch ($State) {
        'Menu' { exit (Show-FluxxwaveModeMenu) }
        'Status' {
            Write-FluxxwaveModeStatus
            exit 0
        }
        default { exit (Invoke-FluxxwaveMode -State $State -MachineOnly:$MachineOnly -Quiet:$MachineOnly) }
    }
}
