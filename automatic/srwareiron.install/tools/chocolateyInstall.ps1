$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '8315fa070db8751d7ea3e719be51847faab04f2f6755f968b818e8935ea54808'
  checksumType   = 'sha256'
  checksum64     = 'c2185172d76869f8c305740acaed3c929d5a7ea0830ddc8efd6ef305718cbf7f'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
