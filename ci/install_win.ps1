$ErrorActionPreference = 'Stop'
Set-PSDebug -Trace 1
$Version = 6.1.2
Invoke-WebRequest -Out $Home\AppData\Local\Temp -Uri https://github.com/PowerShell/PowerShell/releases/download/v$Version/PowerShell-$Version-win-x64.zip
# TODO
