$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'b6c5740fe3ddd430c56753e939c1baa9011ee0054313ea79e4b2998dddc6c7df'
  checksumType   = 'sha256'
  checksum64     = '41dd311cadfcd4a10fef775992ea6e2bff9c31d43ae5a7b270d7658a3eb7c719'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
