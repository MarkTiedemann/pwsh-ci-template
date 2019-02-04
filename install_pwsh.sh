#!/bin/sh
set -ev
curl -L -o /tmp/powershell.tar.gz https://github.com/PowerShell/PowerShell/releases/download/v$PWSH_VERSION/powershell-$PWSH_VERSION-$PWSH_OS-x64.tar.gz
sudo mkdir -p /usr/local/microsoft/powershell/$PWSH_VERSION
sudo tar zxf /tmp/powershell.tar.gz -C /usr/local/microsoft/powershell/$PWSH_VERSION
rm /tmp/powershell.tar.gz
sudo chmod +x /usr/local/microsoft/powershell/$PWSH_VERSION/pwsh
sudo ln -s /usr/local/microsoft/powershell/$PWSH_VERSION/pwsh /usr/local/bin/pwsh
