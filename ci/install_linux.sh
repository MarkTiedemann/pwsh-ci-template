#!/bin/sh
set -ev
version=6.1.2
curl -L -o /tmp/powershell.deb https://github.com/PowerShell/PowerShell/releases/download/v$version/powershell_$version-1.ubuntu.14.04_amd64.deb
sudo dpkg -i --force-depends /tmp/powershell.deb
rm /tmp/powershell.deb
