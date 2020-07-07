$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '1bf37e85e5b2afd76c4da2199c3f59af381c81bd6a0c9e831c22ada4212a715c'
  checksumType   = 'sha256'
  checksum64     = '65e6c487382744970d687301f991ce842806a7e581f7c518834491c2b3bc2df0'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
