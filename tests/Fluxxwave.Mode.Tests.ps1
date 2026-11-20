BeforeAll {
    . (Join-Path $PSScriptRoot 'AtlasTestHost.ps1')
    $script:ModeFolder = (Resolve-Path (Join-Path $PSScriptRoot '../app/resources/mode')).ProviderPath
    . (Join-Path $script:ModeFolder 'Set-FluxxwaveMode.ps1') -FunctionsOnly
    # A key of its own under the current user, so nothing the PC uses is touched.
    $script:Sandbox = 'HKCU:\Software\FluxxwaveModeTests'

    function New-ModeTestSetting {
        param([string]$Id, [string]$Path, [string]$Name = 'Flag', [int]$Data = 1, [string]$Scope = 'User', [switch]$Optional)
        $setting = @{ Id = $Id; Scope = $Scope; Kind = 'Registry'; Path = $Path; Name = $Name; Data = $Data }
        if ($Optional) { $setting.Optional = $true }
        return $setting
    }

    function Set-ModeTestValue {
        param([string]$Path, [string]$Kind, $Value, [string]$Name = 'Flag')
        if (-not (Test-Path -LiteralPath $Path)) { [void](New-Item -Path $Path -Force) }
        [void](New-ItemProperty -LiteralPath $Path -Name $Name -PropertyType $Kind -Value $Value -Force)
    }

    # Kind and data of a value, or $null when it is absent. Read through the
    # registry provider, not through the script under test.
    function Get-ModeTestValue {
        param([string]$Path, [string]$Name = 'Flag')
        if (-not (Test-Path -LiteralPath $Path)) { return $null }
        $key = Get-Item -LiteralPath $Path
        try {
            if ($key.GetValueNames() -notcontains $Name) { return $null }
            $data = $key.GetValue($Name, $null, [Microsoft.Win32.RegistryValueOptions]::DoNotExpandEnvironmentNames)
            if ($data -is [byte[]]) { $data = [Convert]::ToBase64String($data) }
            return "$($key.GetValueKind($Name)):$(@($data) -join '|')"
        } finally {
            $key.Dispose()
        }
    }

    # Everything the record would keep about these settings, as one comparable text.
    function Get-ModeTestSnapshot {
        param([object[]]$Settings)
        $lines = foreach ($setting in $Settings) {
            $item = Get-FluxxwaveModeSnapshot -Setting $setting
            foreach ($name in @($item.Keys | Sort-Object)) {
                if ($name -notin @('Applied', 'Outcome', 'Message')) { "$($item.Id) $name=$(@($item[$name]) -join '|')" }
            }
        }
        return ($lines -join "`n")
    }
}

Describe 'Fluxxwave mode registry values' {
    BeforeEach {
        $script:Key = "$script:Sandbox\$([guid]::NewGuid().ToString('N'))"
        $script:Record = Join-Path $TestDrive "$([guid]::NewGuid().ToString('N')).json"
    }

    AfterEach {
        if (Test-Path -LiteralPath $script:Sandbox) { Remove-Item -LiteralPath $script:Sandbox -Recurse -Force }
    }

    It 'removes a value and the key it created when neither was there' {
        $settings = @(New-ModeTestSetting -Id 'flag' -Path $script:Key)

        $on = @(Enable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)
        $on.Count | Should -Be 1
        $on[0].Outcome | Should -Be 'Changed'
        Get-ModeTestValue -Path $script:Key | Should -Be 'DWord:1'
        Test-Path -LiteralPath $script:Record | Should -BeTrue

        $off = @(Disable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)
        $off.Count | Should -Be 1
        $off[0].Outcome | Should -Be 'Restored'
        Test-Path -LiteralPath $script:Key | Should -BeFalse -Because 'the mode created the key and nothing else is in it'
        Test-Path -LiteralPath $script:Record | Should -BeFalse -Because 'everything is back, so there is nothing left to undo'
    }

    It 'puts back a <Kind> value of <Expected> with its own type and data' -ForEach @(
        @{ Kind = 'DWord'; Value = 5; Expected = 'DWord:5' }
        @{ Kind = 'DWord'; Value = -1; Expected = 'DWord:-1' }
        @{ Kind = 'QWord'; Value = 6000000000; Expected = 'QWord:6000000000' }
        @{ Kind = 'String'; Value = 'as it was'; Expected = 'String:as it was' }
        @{ Kind = 'ExpandString'; Value = '%TEMP%\kept'; Expected = 'ExpandString:%TEMP%\kept' }
        @{ Kind = 'MultiString'; Value = @('first', 'second'); Expected = 'MultiString:first|second' }
        @{ Kind = 'MultiString'; Value = @('only'); Expected = 'MultiString:only' }
        @{ Kind = 'Binary'; Value = [byte[]](1, 2, 250); Expected = 'Binary:AQL6' }
    ) {
        Set-ModeTestValue -Path $script:Key -Kind $Kind -Value $Value
        Get-ModeTestValue -Path $script:Key | Should -Be $Expected
        $settings = @(New-ModeTestSetting -Id 'flag' -Path $script:Key)

        [void](Enable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)
        Get-ModeTestValue -Path $script:Key | Should -Be 'DWord:1'

        [void](Disable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)
        Get-ModeTestValue -Path $script:Key | Should -Be $Expected
    }

    It 'leaves a key that was already there, and the other values in it' {
        Set-ModeTestValue -Path $script:Key -Kind 'DWord' -Value 7 -Name 'Other'
        $settings = @(New-ModeTestSetting -Id 'flag' -Path $script:Key)

        [void](Enable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)
        [void](Disable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)

        Get-ModeTestValue -Path $script:Key | Should -BeNullOrEmpty
        Get-ModeTestValue -Path $script:Key -Name 'Other' | Should -Be 'DWord:7'
    }

    It 'leaves a key the mode created when something else was added to it meanwhile' {
        $settings = @(New-ModeTestSetting -Id 'flag' -Path $script:Key)
        [void](Enable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)
        Set-ModeTestValue -Path $script:Key -Kind 'String' -Value 'not ours' -Name 'AddedLater'

        [void](Disable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)

        Get-ModeTestValue -Path $script:Key | Should -BeNullOrEmpty
        Get-ModeTestValue -Path $script:Key -Name 'AddedLater' | Should -Be 'String:not ours'
    }

    It 'keeps the first record when the mode is turned on twice' {
        # Several strings, so the record is read and written again with a list in it.
        Set-ModeTestValue -Path $script:Key -Kind 'MultiString' -Value @('first', 'second')
        $settings = @(New-ModeTestSetting -Id 'flag' -Path $script:Key)

        [void](Enable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)
        [void](Enable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)
        Get-ModeTestValue -Path $script:Key | Should -Be 'DWord:1'
        [void](Disable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)

        Get-ModeTestValue -Path $script:Key | Should -Be 'MultiString:first|second' -Because 'the second run must not record the mode''s own value as the original'
    }

    It 'records a setting that joins the list after the mode was turned on' {
        $first = New-ModeTestSetting -Id 'first' -Path $script:Key -Name 'First'
        $second = New-ModeTestSetting -Id 'second' -Path $script:Key -Name 'Second' -Data 0
        [void](Enable-FluxxwaveModeScope -Scope 'User' -Settings @($first) -RecordPath $script:Record)
        [void](Enable-FluxxwaveModeScope -Scope 'User' -Settings @($first, $second) -RecordPath $script:Record)
        Get-ModeTestValue -Path $script:Key -Name 'Second' | Should -Be 'DWord:0'

        $off = @(Disable-FluxxwaveModeScope -Scope 'User' -Settings @($first, $second) -RecordPath $script:Record)

        @($off | Where-Object { $_.Outcome -eq 'Restored' }).Count | Should -Be 2
        Get-ModeTestValue -Path $script:Key -Name 'First' | Should -BeNullOrEmpty
        Get-ModeTestValue -Path $script:Key -Name 'Second' | Should -BeNullOrEmpty
    }

    It 'only works on the settings of the half it was asked for' {
        $user = New-ModeTestSetting -Id 'user' -Path $script:Key -Name 'User'
        $machine = New-ModeTestSetting -Id 'machine' -Path $script:Key -Name 'Machine' -Scope 'Machine'

        $on = @(Enable-FluxxwaveModeScope -Scope 'User' -Settings @($user, $machine) -RecordPath $script:Record)

        $on.Count | Should -Be 1
        Get-ModeTestValue -Path $script:Key -Name 'User' | Should -Be 'DWord:1'
        Get-ModeTestValue -Path $script:Key -Name 'Machine' | Should -BeNullOrEmpty
    }
}

Describe 'Fluxxwave mode when a setting cannot be changed' {
    BeforeEach {
        $script:Key = "$script:Sandbox\$([guid]::NewGuid().ToString('N'))"
        $script:Record = Join-Path $TestDrive "$([guid]::NewGuid().ToString('N')).json"
    }

    AfterEach {
        if (Test-Path -LiteralPath $script:Sandbox) { Remove-Item -LiteralPath $script:Sandbox -Recurse -Force }
    }

    It 'reports the failure, carries on with the rest and does not undo what it never did' {
        Mock Set-FluxxwaveModeSetting { throw 'access denied' } -ParameterFilter { $Setting.Id -ne 'fine' }
        $settings = @(
            (New-ModeTestSetting -Id 'required' -Path $script:Key -Name 'Required')
            (New-ModeTestSetting -Id 'optional' -Path $script:Key -Name 'Optional' -Optional)
            (New-ModeTestSetting -Id 'fine' -Path $script:Key -Name 'Fine')
        )

        $on = @(Enable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)

        ($on | Where-Object { $_.Id -eq 'required' }).Outcome | Should -Be 'Failed'
        ($on | Where-Object { $_.Id -eq 'required' }).Message | Should -Be 'access denied'
        ($on | Where-Object { $_.Id -eq 'optional' }).Outcome | Should -Be 'Skipped' -Because 'Windows protects that value on some builds'
        ($on | Where-Object { $_.Id -eq 'fine' }).Outcome | Should -Be 'Changed'

        $off = @(Disable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)

        ($off | Where-Object { $_.Id -eq 'required' }).Outcome | Should -Be 'Skipped'
        ($off | Where-Object { $_.Id -eq 'fine' }).Outcome | Should -Be 'Restored'
        Test-Path -LiteralPath $script:Record | Should -BeFalse
        Get-ModeTestValue -Path $script:Key -Name 'Fine' | Should -BeNullOrEmpty
    }

    It 'undoes a change that stopped halfway' {
        Mock Set-FluxxwaveModeSetting {
            Set-FluxxwaveRegistryData -Path $Setting.Path -Name $Setting.Name -ValueKind 'DWord' -Data $Setting.Data
            throw 'stopped halfway'
        }
        $settings = @(New-ModeTestSetting -Id 'halfway' -Path $script:Key)

        $on = @(Enable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)
        $on[0].Outcome | Should -Be 'Failed'
        Get-ModeTestValue -Path $script:Key | Should -Be 'DWord:1'

        $off = @(Disable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)
        $off[0].Outcome | Should -Be 'Restored'
        Test-Path -LiteralPath $script:Key | Should -BeFalse
    }

    It 'records a setting afresh when an earlier try did not change it' {
        Set-ModeTestValue -Path $script:Key -Kind 'DWord' -Value 5
        $script:Blocked = $true
        Mock Set-FluxxwaveModeSetting { throw 'not now' } -ParameterFilter { $script:Blocked }
        $settings = @(New-ModeTestSetting -Id 'flag' -Path $script:Key)
        [void](Enable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)
        Get-ModeTestValue -Path $script:Key | Should -Be 'DWord:5'

        Set-ModeTestValue -Path $script:Key -Kind 'DWord' -Value 7
        $script:Blocked = $false
        [void](Enable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)
        Get-ModeTestValue -Path $script:Key | Should -Be 'DWord:1'
        [void](Disable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)

        Get-ModeTestValue -Path $script:Key | Should -Be 'DWord:7' -Because 'that is what the PC had right before the mode changed it'
    }

    It 'keeps what could not be put back in the record, for the next try' {
        $settings = @(
            (New-ModeTestSetting -Id 'stuck' -Path $script:Key -Name 'Stuck')
            (New-ModeTestSetting -Id 'fine' -Path $script:Key -Name 'Fine')
        )
        [void](Enable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)
        Mock Restore-FluxxwaveModeSetting { throw 'in use' } -ParameterFilter { $Item.Id -eq 'stuck' }

        $off = @(Disable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)

        ($off | Where-Object { $_.Id -eq 'stuck' }).Outcome | Should -Be 'Failed'
        ($off | Where-Object { $_.Id -eq 'fine' }).Outcome | Should -Be 'Restored'
        $left = @(Read-FluxxwaveModeRecord -Path $script:Record)
        $left.Count | Should -Be 1
        $left[0].Id | Should -Be 'stuck'
        $left[0].Message | Should -Be 'in use'
        Get-ModeTestValue -Path $script:Key -Name 'Stuck' | Should -Be 'DWord:1'
        Get-ModeTestValue -Path $script:Key -Name 'Fine' | Should -BeNullOrEmpty
    }

    It 'has nothing to do when the mode is already off' {
        @(Disable-FluxxwaveModeScope -Scope 'User' -RecordPath $script:Record).Count | Should -Be 0
    }
}

Describe 'Fluxxwave mode records' {
    BeforeEach {
        $script:Key = "$script:Sandbox\$([guid]::NewGuid().ToString('N'))"
        $script:Record = Join-Path $TestDrive "$([guid]::NewGuid().ToString('N')).json"
    }

    AfterEach {
        if (Test-Path -LiteralPath $script:Sandbox) { Remove-Item -LiteralPath $script:Sandbox -Recurse -Force }
    }

    It 'takes what to put back from its own list, never from the record' {
        $elsewhere = "$($script:Key)-elsewhere"
        Set-ModeTestValue -Path $elsewhere -Kind 'DWord' -Value 9 -Name 'Victim'
        $settings = @(New-ModeTestSetting -Id 'flag' -Path $script:Key)
        [void](Enable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)
        # A record edited to point somewhere else, and to undo a setting the script does not have.
        $edited = @(
            @{ Id = 'flag'; Applied = $true; KeyExisted = $false; Existed = $false; Path = $elsewhere; Name = 'Victim' }
            @{ Id = 'made-up'; Applied = $true; KeyExisted = $false; Existed = $false; Path = $elsewhere; Name = 'Victim' }
        )
        Write-FluxxwaveModeRecord -Path $script:Record -Scope 'User' -Items $edited

        $off = @(Disable-FluxxwaveModeScope -Scope 'User' -Settings $settings -RecordPath $script:Record)

        Get-ModeTestValue -Path $elsewhere -Name 'Victim' | Should -Be 'DWord:9'
        ($off | Where-Object { $_.Id -eq 'flag' }).Outcome | Should -Be 'Restored'
        Test-Path -LiteralPath $script:Key | Should -BeFalse
        ($off | Where-Object { $_.Id -eq 'made-up' }).Outcome | Should -Be 'Failed'
        $left = @(Read-FluxxwaveModeRecord -Path $script:Record)
        $left.Count | Should -Be 1
        $left[0].Id | Should -Be 'made-up'
    }

    It 'does not put back a machine setting from the user half' {
        $machine = New-ModeTestSetting -Id 'machine' -Path $script:Key -Name 'Machine' -Scope 'Machine'
        Set-ModeTestValue -Path $script:Key -Kind 'DWord' -Value 1 -Name 'Machine'
        Write-FluxxwaveModeRecord -Path $script:Record -Scope 'User' -Items @(@{ Id = 'machine'; Applied = $true; KeyExisted = $false; Existed = $false })

        $off = @(Disable-FluxxwaveModeScope -Scope 'User' -Settings @($machine) -RecordPath $script:Record)

        $off[0].Outcome | Should -Be 'Failed'
        Get-ModeTestValue -Path $script:Key -Name 'Machine' | Should -Be 'DWord:1'
    }

    It 'refuses a record written by a different version' {
        [IO.File]::WriteAllText($script:Record, '{ "Schema": 2, "Scope": "User", "Items": [] }')
        { Disable-FluxxwaveModeScope -Scope 'User' -RecordPath $script:Record } | Should -Throw '*different version*'
        Test-Path -LiteralPath $script:Record | Should -BeTrue
    }

    It 'keeps the <Scope> record under <Folder>' -ForEach @(
        @{ Scope = 'User'; Folder = 'LocalApplicationData'; File = 'user.json' }
        @{ Scope = 'Machine'; Folder = 'CommonApplicationData'; File = 'machine.json' }
    ) {
        Get-FluxxwaveModeRecordPath -Scope $Scope | Should -Be (Join-Path ([Environment]::GetFolderPath($Folder)) "Fluxxwave\Mode\$File")
    }
}

Describe 'Fluxxwave mode started by the user' {
    BeforeEach {
        # A key for each half, as the real settings have: HKCU for one, HKLM for the other.
        $script:Key = "$script:Sandbox\$([guid]::NewGuid().ToString('N'))"
        $script:MachineKey = "$($script:Key)-machine"
        $script:RecordRoot = Join-Path $TestDrive ([guid]::NewGuid().ToString('N'))
        $script:TestSettings = @(
            (New-ModeTestSetting -Id 'user-flag' -Path $script:Key)
            (New-ModeTestSetting -Id 'machine-flag' -Path $script:MachineKey -Scope 'Machine')
        )
        Mock Get-FluxxwaveModeSettings { $script:TestSettings }
        Mock Get-FluxxwaveModeRecordPath { Join-Path $script:RecordRoot "$Scope.json" }
        Mock Get-UICulture { [Globalization.CultureInfo]'en-GB' }
        Mock Get-Culture { [Globalization.CultureInfo]'en-GB' }
        Mock Write-Host {}
    }

    AfterEach {
        if (Test-Path -LiteralPath $script:Sandbox) { Remove-Item -LiteralPath $script:Sandbox -Recurse -Force }
    }

    Context 'without administrator rights, when the permission prompt is declined' {
        BeforeEach {
            Mock Test-FluxxwaveAdministrator { $false }
            Mock Start-FluxxwaveModeElevated { 3 }
        }

        It 'does the user half, says so, and has nothing to ask for when turned off' {
            Invoke-FluxxwaveMode -State 'On' | Should -Be 3

            Get-ModeTestValue -Path $script:Key | Should -Be 'DWord:1'
            Get-ModeTestValue -Path $script:MachineKey | Should -BeNullOrEmpty
            Get-FluxxwaveModeStatus | Should -Be 'Partial'
            Should -Invoke Write-Host -Times 1 -Exactly -ParameterFilter { "$Object" -like '*permission was not given*' }

            Invoke-FluxxwaveMode -State 'Off' | Should -Be 0

            Should -Invoke Start-FluxxwaveModeElevated -Times 1 -Exactly -Because 'with no machine record there is nothing to ask permission for'
            Get-FluxxwaveModeStatus | Should -Be 'Off'
            Test-Path -LiteralPath $script:Key | Should -BeFalse
        }
    }

    Context 'without administrator rights, when permission is given' {
        BeforeEach {
            Mock Test-FluxxwaveAdministrator { $false }
            # Stands in for the elevated copy: the machine half, and no window to write to.
            Mock Start-FluxxwaveModeElevated {
                $done = @(if ($State -eq 'On') { Enable-FluxxwaveModeScope -Scope 'Machine' } else { Disable-FluxxwaveModeScope -Scope 'Machine' })
                if (@($done | Where-Object { $_.Outcome -eq 'Failed' }).Count -gt 0) { return 2 }
                return 0
            }
        }

        It 'leaves the machine half to the elevated copy and shows what it did' {
            Invoke-FluxxwaveMode -State 'On' | Should -Be 0

            Get-ModeTestValue -Path $script:Key | Should -Be 'DWord:1'
            Get-ModeTestValue -Path $script:MachineKey | Should -Be 'DWord:1'
            Get-FluxxwaveModeStatus | Should -Be 'On'
            Should -Invoke Write-Host -Times 1 -Exactly -ParameterFilter { "$Object" -like '*user-flag: applied*' }
            Should -Invoke Write-Host -Times 1 -Exactly -ParameterFilter { "$Object" -like '*machine-flag: applied*' }

            Invoke-FluxxwaveMode -State 'Off' | Should -Be 0

            Should -Invoke Write-Host -Times 1 -Exactly -ParameterFilter { "$Object" -like '*user-flag: put back*' }
            Should -Invoke Write-Host -Times 1 -Exactly -ParameterFilter { "$Object" -like '*machine-flag: put back*' }
            Get-FluxxwaveModeStatus | Should -Be 'Off'
            Test-Path -LiteralPath $script:Key | Should -BeFalse
            Test-Path -LiteralPath $script:MachineKey | Should -BeFalse
        }

        It 'shows which machine setting failed, and why' {
            Mock Set-FluxxwaveModeSetting { throw 'access denied' } -ParameterFilter { $Setting.Id -eq 'machine-flag' }

            Invoke-FluxxwaveMode -State 'On' | Should -Be 2

            Should -Invoke Write-Host -Times 1 -Exactly -ParameterFilter { "$Object" -like '*machine-flag: FAILED (access denied)*' }
            Get-ModeTestValue -Path $script:Key | Should -Be 'DWord:1'
        }
    }

    Context 'without administrator rights, when the elevated copy does not finish' {
        BeforeEach {
            Mock Test-FluxxwaveAdministrator { $false }
            Mock Start-FluxxwaveModeElevated { 1 }
        }

        It 'says that the machine settings may be unchanged' {
            Invoke-FluxxwaveMode -State 'On' | Should -Be 2

            Should -Invoke Write-Host -Times 1 -Exactly -ParameterFilter { "$Object" -like '*did not finish*' }
        }
    }

    Context 'with administrator rights' {
        BeforeEach {
            Mock Test-FluxxwaveAdministrator { $true }
            Mock Start-FluxxwaveModeElevated { throw 'an elevated run must not ask for permission again' }
        }

        It 'does both halves itself' {
            Invoke-FluxxwaveMode -State 'On' | Should -Be 0

            Get-ModeTestValue -Path $script:Key | Should -Be 'DWord:1'
            Get-ModeTestValue -Path $script:MachineKey | Should -Be 'DWord:1'

            Invoke-FluxxwaveMode -State 'Off' | Should -Be 0

            Test-Path -LiteralPath $script:Key | Should -BeFalse
            Test-Path -LiteralPath $script:MachineKey | Should -BeFalse
            Should -Invoke Start-FluxxwaveModeElevated -Times 0 -Exactly
        }

        It 'does only the machine half as the elevated copy, and writes nothing' {
            Invoke-FluxxwaveMode -State 'On' -MachineOnly -Quiet | Should -Be 0

            Get-ModeTestValue -Path $script:Key | Should -BeNullOrEmpty
            Get-ModeTestValue -Path $script:MachineKey | Should -Be 'DWord:1'

            Invoke-FluxxwaveMode -State 'Off' -MachineOnly -Quiet | Should -Be 0

            Test-Path -LiteralPath $script:MachineKey | Should -BeFalse
            Should -Invoke Write-Host -Times 0 -Exactly
        }

        It 'returns 2 when a setting could not be changed, and still does the rest' {
            Mock Set-FluxxwaveModeSetting { throw 'access denied' } -ParameterFilter { $Setting.Id -eq 'user-flag' }

            Invoke-FluxxwaveMode -State 'On' | Should -Be 2

            Should -Invoke Write-Host -Times 1 -Exactly -ParameterFilter { "$Object" -like '*user-flag: FAILED (access denied)*' }
            Get-ModeTestValue -Path $script:MachineKey | Should -Be 'DWord:1'
        }
    }
}

Describe 'Fluxxwave mode settings' {
    BeforeAll {
        $script:Settings = @(Get-FluxxwaveModeSettings)
    }

    It 'lists each setting once, as something the script knows how to undo' {
        $ids = @($script:Settings | ForEach-Object { $_.Id })
        @($ids | Sort-Object -Unique).Count | Should -Be $ids.Count
        foreach ($setting in $script:Settings) {
            $setting.Kind | Should -BeIn @('Registry', 'Service', 'PowerPlan')
            $setting.Scope | Should -BeIn @('User', 'Machine')
            if ($setting.Kind -eq 'Registry') {
                $setting.Data | Should -BeOfType ([int])
                $hive = if ($setting.Scope -eq 'User') { 'HKCU:\' } else { 'HKLM:\' }
                $setting.Path.StartsWith($hive, [StringComparison]::OrdinalIgnoreCase) | Should -BeTrue -Because "$($setting.Id) is a $($setting.Scope) setting"
            } else {
                $setting.Scope | Should -Be 'Machine' -Because 'services and power plans need an administrator'
            }
            if ($setting.Kind -eq 'PowerPlan') {
                foreach ($plan in @($setting.Scheme) + @($setting.From)) {
                    $plan | Should -MatchExactly '^[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$' -Because 'plans are compared as lowercase GUIDs'
                }
                $setting.From | Should -Not -Contain $setting.Scheme
            }
        }
    }

    It 'changes nothing that protects the PC or keeps it up to date' {
        $guarded = 'Defender|SecurityHealth|Windows Security|WindowsUpdate|wuauserv|UsoSvc|mpssvc|WinDefend|Sense|EnableLUA|DeviceGuard|SmartScreen|Policies\\System|\\Lsa'
        foreach ($setting in $script:Settings) {
            "$($setting.Path) $($setting.Name)" | Should -Not -Match $guarded -Because "$($setting.Id) must stay a background-activity setting"
        }
    }

    It 'names every setting and outcome in English and in Korean' {
        Mock Get-UICulture { $script:TestCulture }
        Mock Get-Culture { $script:TestCulture }
        $keys = @($script:Settings | ForEach-Object { $_.Id }) + @('Changed', 'Restored', 'Skipped', 'Failed', 'StatusOn', 'StatusOff', 'StatusPartial', 'MachineFailed', 'Declined')
        foreach ($key in $keys) {
            $script:TestCulture = [Globalization.CultureInfo]'en-GB'
            # A key without a text comes back as it is, which the Korean check below catches.
            Get-FluxxwaveModeText -Key $key | Should -Match '^[\x20-\x7E]+$'
            $script:TestCulture = [Globalization.CultureInfo]'ko-KR'
            Get-FluxxwaveModeText -Key $key | Should -Match '[\uAC00-\uD7A3]' -Because "the Korean text for $key decodes to Hangul"
        }
    }

    It 'speaks Korean when only the regional format is Korean' {
        Mock Get-UICulture { [Globalization.CultureInfo]'en-US' }
        Mock Get-Culture { [Globalization.CultureInfo]'ko-KR' }
        Get-FluxxwaveModeText -Key 'StatusOn' | Should -Match '[\uAC00-\uD7A3]'
    }

    It 'keeps <_> plain ASCII, so it reads the same in every code page' -ForEach @('Set-FluxxwaveMode.ps1', 'Fluxxwave Mode.cmd') {
        $bytes = [IO.File]::ReadAllBytes((Join-Path $script:ModeFolder $_))
        @($bytes | Where-Object { $_ -gt 127 }).Count | Should -Be 0
    }

    It 'opens the menu of the script next to the launcher' {
        $launcher = [IO.File]::ReadAllText((Join-Path $script:ModeFolder 'Fluxxwave Mode.cmd'))
        $launcher | Should -Match ([regex]::Escape('-File "%~dp0Set-FluxxwaveMode.ps1" -State Menu'))
    }
}

Describe 'Fluxxwave mode power plan' {
    BeforeAll {
        $script:Plan = @(Get-FluxxwaveModeSettings | Where-Object { $_.Kind -eq 'PowerPlan' })[0]
        $script:Balanced = '381b4222-f694-41f0-9685-ff5bb260df2e'
        $script:HighPerformance = '8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c'
        $script:OwnPlan = '066e4909-81f9-4a19-b7b0-069ea65d07bb'
    }

    BeforeEach {
        $script:Active = $script:Balanced
        $script:Installed = @($script:Balanced, $script:HighPerformance, $script:OwnPlan)
        Mock Get-FluxxwavePowerSchemes { @{ Active = $script:Active; All = $script:Installed } }
        Mock Set-FluxxwavePowerScheme {
            $script:Active = $Scheme
            return $true
        }
    }

    It 'goes from Balanced to High performance and back' {
        $item = Get-FluxxwaveModeSnapshot -Setting $script:Plan

        Set-FluxxwaveModeSetting -Setting $script:Plan | Should -BeTrue
        $script:Active | Should -Be $script:HighPerformance

        Restore-FluxxwaveModeSetting -Setting $script:Plan -Item $item
        $script:Active | Should -Be $script:Balanced
    }

    It 'leaves a plan the user picked or made alone' {
        $script:Active = $script:OwnPlan

        Set-FluxxwaveModeSetting -Setting $script:Plan | Should -BeFalse

        Should -Invoke Set-FluxxwavePowerScheme -Times 0 -Exactly
    }

    It 'has nothing to switch to on a PC without the High performance plan' {
        $script:Installed = @($script:Balanced)

        Set-FluxxwaveModeSetting -Setting $script:Plan | Should -BeFalse

        Should -Invoke Set-FluxxwavePowerScheme -Times 0 -Exactly
    }

    It 'leaves the plan alone when it cannot tell which one is active' {
        $script:Active = $null

        Set-FluxxwaveModeSetting -Setting $script:Plan | Should -BeFalse

        Should -Invoke Set-FluxxwavePowerScheme -Times 0 -Exactly
    }

    It 'counts a PC already on High performance as done, and going back changes nothing' {
        $script:Active = $script:HighPerformance
        $item = Get-FluxxwaveModeSnapshot -Setting $script:Plan

        Set-FluxxwaveModeSetting -Setting $script:Plan | Should -BeTrue
        Should -Invoke Set-FluxxwavePowerScheme -Times 0 -Exactly

        Restore-FluxxwaveModeSetting -Setting $script:Plan -Item $item
        $script:Active | Should -Be $script:HighPerformance
    }

    It 'falls back to Balanced when the plan that was active has been deleted' {
        Mock Set-FluxxwavePowerScheme { return $false } -ParameterFilter { $Scheme -eq $script:OwnPlan }
        $script:Active = $script:HighPerformance

        Restore-FluxxwaveModeSetting -Setting $script:Plan -Item @{ Id = 'power-plan'; Previous = $script:OwnPlan }

        $script:Active | Should -Be $script:Balanced
    }

    It 'does not hand powercfg a previous plan that is not a GUID' {
        Restore-FluxxwaveModeSetting -Setting $script:Plan -Item @{ Id = 'power-plan'; Previous = 'x /delete y' }

        Should -Invoke Set-FluxxwavePowerScheme -Times 1 -Exactly
        Should -Invoke Set-FluxxwavePowerScheme -Times 1 -Exactly -ParameterFilter { $Scheme -eq $script:Balanced }
    }
}

Describe 'Fluxxwave mode service' {
    BeforeAll {
        $script:Indexer = @(Get-FluxxwaveModeSettings | Where-Object { $_.Kind -eq 'Service' })[0]
    }

    BeforeEach {
        Mock Set-FluxxwaveServiceStart {}
        Mock Stop-Service {}
        Mock Start-Service {}
    }

    It 'disables a running service and stops it' {
        Mock Get-FluxxwaveServiceState { @{ Present = $true; StartMode = 'Auto'; Delayed = $true; Running = $true } }

        Set-FluxxwaveModeSetting -Setting $script:Indexer | Should -BeTrue

        Should -Invoke Set-FluxxwaveServiceStart -Times 1 -Exactly -ParameterFilter { $Name -eq 'WSearch' -and $StartMode -eq 'Disabled' }
        Should -Invoke Stop-Service -Times 1 -Exactly -ParameterFilter { $Name -eq 'WSearch' }
    }

    It 'has nothing to stop when the service was not running' {
        Mock Get-FluxxwaveServiceState { @{ Present = $true; StartMode = 'Manual'; Delayed = $false; Running = $false } }

        Set-FluxxwaveModeSetting -Setting $script:Indexer | Should -BeTrue

        Should -Invoke Set-FluxxwaveServiceStart -Times 1 -Exactly
        Should -Invoke Stop-Service -Times 0 -Exactly
    }

    It 'skips a PC that does not have the service' {
        Mock Get-FluxxwaveServiceState { @{ Present = $false; StartMode = $null; Delayed = $false; Running = $false } }

        Set-FluxxwaveModeSetting -Setting $script:Indexer | Should -BeFalse

        Should -Invoke Set-FluxxwaveServiceStart -Times 0 -Exactly
    }

    It 'puts the start type back and starts a service that was running' {
        Restore-FluxxwaveModeSetting -Setting $script:Indexer -Item @{ Id = 'search-indexing'; Present = $true; StartMode = 'Auto'; Delayed = $true; Running = $true }

        Should -Invoke Set-FluxxwaveServiceStart -Times 1 -Exactly -ParameterFilter { $Name -eq 'WSearch' -and $StartMode -eq 'Auto' -and $Delayed }
        Should -Invoke Start-Service -Times 1 -Exactly -ParameterFilter { $Name -eq 'WSearch' }
    }

    It 'leaves a service that was stopped before stopped' {
        Restore-FluxxwaveModeSetting -Setting $script:Indexer -Item @{ Id = 'search-indexing'; Present = $true; StartMode = 'Manual'; Delayed = $false; Running = $false }

        Should -Invoke Set-FluxxwaveServiceStart -Times 1 -Exactly -ParameterFilter { $StartMode -eq 'Manual' -and -not $Delayed }
        Should -Invoke Start-Service -Times 0 -Exactly
    }

    It 'takes the service name from its own list, not from the record' {
        Restore-FluxxwaveModeSetting -Setting $script:Indexer -Item @{ Id = 'search-indexing'; Name = 'WinDefend'; Present = $true; StartMode = 'Disabled'; Delayed = $false; Running = $false }

        Should -Invoke Set-FluxxwaveServiceStart -Times 1 -Exactly -ParameterFilter { $Name -eq 'WSearch' }
    }
}

Describe 'Fluxxwave mode Windows tools' {
    It 'asks sc.exe for <Expected> when the start type was <StartMode> (delayed: <Delayed>)' -ForEach @(
        @{ StartMode = 'Auto'; Delayed = $true; Expected = 'delayed-auto' }
        @{ StartMode = 'Auto'; Delayed = $false; Expected = 'auto' }
        @{ StartMode = 'Manual'; Delayed = $false; Expected = 'demand' }
        @{ StartMode = 'Disabled'; Delayed = $false; Expected = 'disabled' }
    ) {
        Mock Invoke-FluxxwaveNative { @{ ExitCode = 0; Output = ''; Error = '' } }

        Set-FluxxwaveServiceStart -Name 'WSearch' -StartMode $StartMode -Delayed $Delayed

        Should -Invoke Invoke-FluxxwaveNative -Times 1 -Exactly -ParameterFilter {
            $Name -eq 'sc.exe' -and ($ArgumentList -join ' ') -eq "config WSearch start= $Expected"
        }
    }

    It 'refuses a start type it does not set, and says so when sc.exe fails' {
        Mock Invoke-FluxxwaveNative { @{ ExitCode = 5; Output = ''; Error = '' } }

        { Set-FluxxwaveServiceStart -Name 'WSearch' -StartMode 'Boot' -Delayed $false } | Should -Throw '*does not set*'
        Should -Invoke Invoke-FluxxwaveNative -Times 0 -Exactly

        { Set-FluxxwaveServiceStart -Name 'WSearch' -StartMode 'Auto' -Delayed $false } | Should -Throw '*exit code 5*'
    }

    It 'reads the active plan and every plan out of what powercfg prints' {
        Mock Invoke-FluxxwaveNative {
            @{ ExitCode = 0; Output = 'Power Scheme GUID: 381B4222-F694-41F0-9685-FF5BB260DF2E  (Balanced)'; Error = '' }
        } -ParameterFilter { $ArgumentList -contains '/getactivescheme' }
        Mock Invoke-FluxxwaveNative {
            $printed = @(
                'Existing Power Schemes (* Active)'
                '-----------------------------------'
                'Power Scheme GUID: 381b4222-f694-41f0-9685-ff5bb260df2e  (Balanced) *'
                'Power Scheme GUID: 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c  (High performance)'
            ) -join "`r`n"
            @{ ExitCode = 0; Output = $printed; Error = '' }
        } -ParameterFilter { $ArgumentList -contains '/list' }

        $schemes = Get-FluxxwavePowerSchemes

        $schemes.Active | Should -Be '381b4222-f694-41f0-9685-ff5bb260df2e'
        $schemes.All | Should -Be @('381b4222-f694-41f0-9685-ff5bb260df2e', '8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c')
    }

    It 'knows of no plans when powercfg fails' {
        Mock Invoke-FluxxwaveNative { @{ ExitCode = 1; Output = ''; Error = 'no' } }

        $schemes = Get-FluxxwavePowerSchemes

        $schemes.Active | Should -BeNullOrEmpty
        @($schemes.All).Count | Should -Be 0
    }
}

# The real settings, on a machine that is thrown away afterwards. Never on a
# developer's own PC, where a failed test would leave their settings changed.
Describe 'Fluxxwave mode on a real Windows installation' -Skip:($env:GITHUB_ACTIONS -ne 'true') {
    BeforeEach {
        $script:Record = Join-Path $TestDrive "$([guid]::NewGuid().ToString('N')).json"
    }

    It 'puts every <_> setting back exactly as it was' -ForEach @('User', 'Machine') {
        $half = $_
        if ($half -eq 'Machine' -and -not (Test-FluxxwaveAdministrator)) {
            Set-ItResult -Skipped -Because 'machine settings need an administrator'
            return
        }
        $settings = @(Get-FluxxwaveModeSettings | Where-Object { $_.Scope -eq $half })
        $before = Get-ModeTestSnapshot -Settings $settings

        $on = @(Enable-FluxxwaveModeScope -Scope $half -RecordPath $script:Record)
        try {
            foreach ($setting in $settings) {
                $outcome = ($on | Where-Object { $_.Id -eq $setting.Id }).Outcome
                if (-not $setting.Optional) { $outcome | Should -Not -Be 'Failed' -Because "$($setting.Id) is a setting every PC can take" }
                if ($setting.Kind -eq 'Registry' -and $outcome -eq 'Changed') {
                    Get-ModeTestValue -Path $setting.Path -Name $setting.Name | Should -Be "DWord:$($setting.Data)"
                }
            }
        } finally {
            $off = @(Disable-FluxxwaveModeScope -Scope $half -RecordPath $script:Record)
        }

        @($off | Where-Object { $_.Outcome -eq 'Failed' }).Count | Should -Be 0
        Test-Path -LiteralPath $script:Record | Should -BeFalse
        # A service that was running is started again without waiting for it.
        $deadline = (Get-Date).AddSeconds(60)
        while ((Get-ModeTestSnapshot -Settings $settings) -ne $before -and (Get-Date) -lt $deadline) { Start-Sleep -Seconds 2 }
        Get-ModeTestSnapshot -Settings $settings | Should -Be $before

        # A note on the run's page, so what the runner did can be read without its log.
        $outcomes = @($on | ForEach-Object { "$($_.Id)=$($_.Outcome)" }) -join ', '
        $state = $before.Replace("`n", '; ')
        Write-Host "::notice title=Fluxxwave mode $half half::On, then off, and the same as before. $outcomes. Before: $state"
    }

    # The whole run as a double-click starts it: the user half in this session,
    # the machine half in the real elevated copy, the records where they really
    # go. A hosted runner is already elevated, so the copy starts without a
    # prompt. The runner is first set up like a home PC, where the indexer runs
    # and the plan is Balanced, so stopping the service and switching the plan
    # really happen.
    It 'works from start to finish on a runner set up like a home PC' {
        if (-not (Test-FluxxwaveAdministrator)) {
            Set-ItResult -Skipped -Because 'the elevated copy needs an administrator'
            return
        }
        $settings = @(Get-FluxxwaveModeSettings)
        $indexer = @($settings | Where-Object { $_.Kind -eq 'Service' })[0]
        $plan = @($settings | Where-Object { $_.Kind -eq 'PowerPlan' })[0]
        $runnerService = Get-FluxxwaveServiceState -Name $indexer.Name
        $runnerPlan = (Get-FluxxwavePowerSchemes).Active
        $note = ''
        try {
            if ($runnerService.Present) {
                try {
                    Set-FluxxwaveServiceStart -Name $indexer.Name -StartMode 'Auto' -Delayed $true
                    Start-Service -Name $indexer.Name -WarningAction SilentlyContinue -ErrorAction Stop
                } catch {
                    $reason = "$($_.Exception.Message)".Replace("`r", ' ').Replace("`n", ' ')
                    $note = "The indexer could not be started here ($reason). "
                }
            } else {
                $note = 'This runner has no indexer. '
            }
            [void](Set-FluxxwavePowerScheme -Scheme '381b4222-f694-41f0-9685-ff5bb260df2e')
            $before = Get-ModeTestSnapshot -Settings $settings

            # This session stands in for one that is not elevated, so it starts the copy.
            Mock Test-FluxxwaveAdministrator { $false }
            $onCode = Invoke-FluxxwaveMode -State 'On'
            $onStatus = Get-FluxxwaveModeStatus
            $on = Get-ModeTestSnapshot -Settings $settings
            $offCode = Invoke-FluxxwaveMode -State 'Off'
            $offStatus = Get-FluxxwaveModeStatus
            # The indexer is started again without waiting for it.
            $deadline = (Get-Date).AddSeconds(90)
            while ((Get-ModeTestSnapshot -Settings $settings) -ne $before -and (Get-Date) -lt $deadline) { Start-Sleep -Seconds 2 }
            $after = Get-ModeTestSnapshot -Settings $settings

            # Written before anything is asserted, so a failure can be read from the run's page too.
            $beforeText = $before.Replace("`n", '; ')
            $onText = $on.Replace("`n", '; ')
            Write-Host "::notice title=Fluxxwave mode from start to finish::$($note)On: exit $onCode and $onStatus. Off: exit $offCode and $offStatus. Same as before: $($after -eq $before). Before: $beforeText || While on: $onText"

            $onCode | Should -Be 0
            $onStatus | Should -Be 'On'
            $lines = @($on -split "`n")
            foreach ($setting in @($settings | Where-Object { $_.Kind -eq 'Registry' -and -not $_.Optional })) {
                $lines | Should -Contain "$($setting.Id) ValueKind=DWord"
                $lines | Should -Contain "$($setting.Id) Data=$($setting.Data)"
            }
            if ($runnerService.Present) {
                $lines | Should -Contain "$($indexer.Id) StartMode=Disabled"
                $lines | Should -Contain "$($indexer.Id) Running=False"
            }
            $lines | Should -Contain "$($plan.Id) Previous=$($plan.Scheme)" -Because 'Balanced is swapped for High performance'
            $offCode | Should -Be 0
            $offStatus | Should -Be 'Off'
            $after | Should -Be $before
        } finally {
            # The runner as it was found.
            if ((Get-FluxxwaveModeStatus) -ne 'Off') { [void](Invoke-FluxxwaveMode -State 'Off') }
            if ($runnerService.Present) {
                Set-FluxxwaveServiceStart -Name $indexer.Name -StartMode $runnerService.StartMode -Delayed $runnerService.Delayed
                if (-not $runnerService.Running) { Stop-Service -Name $indexer.Name -Force -WarningAction SilentlyContinue -ErrorAction SilentlyContinue }
            }
            if ($runnerPlan) { [void](Set-FluxxwavePowerScheme -Scheme $runnerPlan) }
        }
    }

    # The file people double-click, with its menu answered from a pipe instead
    # of a keyboard. The runner is elevated, so the script does both halves itself.
    It 'opens from its launcher, and turns the mode on and off from the menu' {
        if (-not (Test-FluxxwaveAdministrator)) {
            Set-ItResult -Skipped -Because 'machine settings need an administrator'
            return
        }
        $launcher = Join-Path $script:ModeFolder 'Fluxxwave Mode.cmd'
        $settings = @(Get-FluxxwaveModeSettings)
        $before = Get-ModeTestSnapshot -Settings $settings
        $runs = @()
        try {
            # Close, turn on, turn off.
            foreach ($choice in @('3', '1', '2')) {
                $start = New-Object System.Diagnostics.ProcessStartInfo
                $start.FileName = $env:ComSpec
                # The answer is piped in by echo: written from here, it would
                # arrive with a byte-order mark in front of it.
                $start.Arguments = '/d /c "echo ' + $choice + '| "' + $launcher + '""'
                $start.UseShellExecute = $false
                $start.CreateNoWindow = $true
                $start.RedirectStandardOutput = $true
                $process = [System.Diagnostics.Process]::Start($start)
                try {
                    $reading = $process.StandardOutput.ReadToEndAsync()
                    $code = 'none, it did not finish'
                    if ($process.WaitForExit(180000)) { $code = $process.ExitCode } else { [void](taskkill.exe /T /F /PID $process.Id) }
                    $runs += @{ Choice = $choice; Code = $code; Text = $reading.Result.Replace("`r", '') }
                } finally {
                    $process.Dispose()
                }
            }
        } finally {
            if ((Get-FluxxwaveModeStatus) -ne 'Off') { [void](Invoke-FluxxwaveMode -State 'Off') }
        }
        $after = Get-ModeTestSnapshot -Settings $settings

        # Written before anything is asserted, so a failure can be read from the run's page too.
        $told = @($runs | ForEach-Object {
                $flat = $_.Text.Trim().Replace("`n", ' / ')
                "Choice $($_.Choice), exit $($_.Code): $flat"
            }) -join ' || '
        Write-Host "::notice title=Fluxxwave mode from its launcher::Same as before: $($after -eq $before). $told"

        $runs.Count | Should -Be 3
        $runs[0].Code | Should -Be 0
        $runs[0].Text | Should -BeLike '*Fluxxwave mode is OFF.*Turn on*'
        $runs[1].Code | Should -Be 0
        $runs[1].Text | Should -BeLike '*Background apps: applied*Fluxxwave mode is ON.*'
        $runs[2].Code | Should -Be 0
        $runs[2].Text | Should -BeLike '*Background apps: put back*Fluxxwave mode is OFF.*'
        $after | Should -Be $before
    }
}
