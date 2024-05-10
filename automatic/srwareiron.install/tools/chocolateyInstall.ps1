$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'ebb23f9f807da4a1bf777478fe2190bac8175ba4bfe11f6a007ac70a8d8bb3bd'
  checksumType   = 'sha256'
  checksum64     = '2be76c1b193e2ecae1bc6f377e5ad14c9dd78fde05262a61099abf74cd5b1540'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
