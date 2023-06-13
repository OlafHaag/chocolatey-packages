$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '4b9e0033db2b67fd7fff43f29922a8061c4fc8e0f65e8e5bfcdc407c348d9c10'
  checksumType   = 'sha256'
  checksum64     = 'a68ddf2aa63e33b8603e5e15586086e9dcdb21123769d5bbfc31dc51d3ed40fe'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
