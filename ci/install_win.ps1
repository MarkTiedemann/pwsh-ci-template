$ErrorActionPreference = 'Stop'
Set-PSDebug -Trace 1
$Version = '6.1.2'
$TempFile = (New-TemporaryFile).FullName
Invoke-WebRequest -Out $TempFile -Uri https://github.com/PowerShell/PowerShell/releases/download/v$Version/PowerShell-$Version-win-x64.zip
Expand-Archive -Path $TempFile -Destination "$($Env:ProgramFiles)\Microsoft\PowerShell\$Version"
Remove-Item $TempFile -Force
New-Item -ItemType SymbolicLink -Path "$($Env:SystemRoot)\pwsh.exe" -Value "$($Env:ProgramFiles)\Microsoft\PowerShell\$Version\pwsh.exe"
