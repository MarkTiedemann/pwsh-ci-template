$ErrorActionPreference = 'Stop'
$Version = '6.1.2'
$Zip = "$($Env:Temp)\powershell.zip"
$Dir = "$($Env:ProgramFiles)\Microsoft\PowerShell\$Version"
Invoke-WebRequest -Out $Zip -Uri https://github.com/PowerShell/PowerShell/releases/download/v$Version/PowerShell-$Version-win-x64.zip
Expand-Archive $Zip -Destination $Dir
Remove-Item $Zip -Force
[Environment]::SetEnvironmentVariable('Path', "$($Env:Path);$Dir", [EnvironmentVariableTarget]::User)
