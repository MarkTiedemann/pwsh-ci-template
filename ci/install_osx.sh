#!/bin/sh
set -ev
version=6.1.2
curl -L -o /tmp/powershell.tar.gz https://github.com/PowerShell/PowerShell/releases/download/v$version/powershell-$version-osx-x64.tar.gz
sudo mkdir -p /usr/local/microsoft/powershell/$version
sudo tar zxf /tmp/powershell.tar.gz -C /usr/local/microsoft/powershell/$version
rm /tmp/powershell.tar.gz
sudo chmod +x /usr/local/microsoft/powershell/$version/pwsh
sudo ln -s /usr/local/microsoft/powershell/$version/pwsh /usr/local/bin/pwsh
