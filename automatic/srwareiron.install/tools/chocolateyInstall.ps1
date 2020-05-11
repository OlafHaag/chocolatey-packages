$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'd526e29c34a4d8f5fbe1c5435bb8bddde3893a24ebb27afd2f81ac4bbd7d3644'
  checksumType   = 'sha256'
  checksum64     = '0f20c78194a81cea5ded0b7f05b4ddfa0f50e197a6dfc33dbae098de5c99c108'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
