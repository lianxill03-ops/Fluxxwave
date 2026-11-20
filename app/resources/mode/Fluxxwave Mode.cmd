@echo off
rem Opens the Fluxxwave mode menu: turn the mode on, or turn it off to put
rem every setting back as it was. Keep Set-FluxxwaveMode.ps1 in the same folder.
"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -File "%~dp0Set-FluxxwaveMode.ps1" -State Menu
rem 1 means PowerShell could not run the script: keep what it said on screen.
if "%errorlevel%"=="1" pause
