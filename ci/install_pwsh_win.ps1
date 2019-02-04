$ErrorActionPreference = 'Stop'
$Version = '6.1.2'
$Zip = "$($Env:Temp)\powershell.zip"
$Dir = "$($Env:ProgramFiles)\Microsoft\PowerShell\$Version"
Invoke-WebRequest -Out $Zip -Uri https://github.com/PowerShell/PowerShell/releases/download/v$Version/PowerShell-$Version-win-x64.zip
Write-Host $Dir
Expand-Archive $Zip -Destination $Dir
ls C:\Program Files\PowerShell\6
ls C:\Program Files\PowerShell\6.1.2
Remove-Item $Zip -Force
[Environment]::SetEnvironmentVariable('Path', "$($Env:Path);$Dir", [EnvironmentVariableTarget]::User)
