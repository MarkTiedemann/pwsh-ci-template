$ErrorActionPreference = 'Stop'
$Version = '6.1.2'
Invoke-WebRequest -Out "$($Env:Temp)\powershell.zip" -Uri https://github.com/PowerShell/PowerShell/releases/download/v$Version/PowerShell-$Version-win-x64.zip
Expand-Archive -Path "$($Env:Temp)\powershell.zip" -Destination "$($Env:ProgramFiles)\Microsoft\PowerShell\$Version"
Remove-Item "$($Env:Temp)\powershell.zip" -Force
New-Item -ItemType SymbolicLink -Path "$($Env:SystemRoot)\pwsh.exe" -Value "$($Env:ProgramFiles)\Microsoft\PowerShell\$Version\pwsh.exe"
