$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'ecf2bd7747a57e13f5072708e161e76c53d1ef582137e7d5507483ab40b5d3f8'
  checksumType   = 'sha256'
  checksum64     = 'a2c76f1f1b214b96bc78d1a849237e48d77dda4d4d07a76473751fa5306964d6'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
