$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '001d3b805fb7470ad70c7943ff00396ae768dd4e3d702a20ea751b29b60aa138'
  checksumType   = 'sha256'
  checksum64     = '7b7ff1d75bb8ebd411680a6851f07a1a4259753eb123cc7b0240f8e0780e215f'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
