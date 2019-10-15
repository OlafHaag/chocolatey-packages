$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'c0a9d7ae196093feb91bb400b70d3ed31c08afb2b6e5f9e262de0a372b2f9d9f'
  checksumType   = 'sha256'
  checksum64     = 'e0fef56ce5da3f49b83fc7016fcc2ddc667cae44ad5f2fd7aab0b273aa23eaa3'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
