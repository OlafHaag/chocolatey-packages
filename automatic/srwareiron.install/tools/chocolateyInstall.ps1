$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'e73ffbd7d620f5a0f0391ff83b4fcf669734fb0af299b6ccc411fdfced773a32'
  checksumType   = 'sha256'
  checksum64     = '9806b453ebfe68346e06c7a96d94da902d2cb146817156f50e73d1d9c463e4a1'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
