$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'bd69136c0798ffa97e7ed87ed07e89fc4efb7c9912971c34302567860b4785a3'
  checksumType   = 'sha256'
  checksum64     = '698ca3957eed164c81fc09c7963df284a9d0e1101d3eb3cfac1d9f3f6fe2c7a2'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
