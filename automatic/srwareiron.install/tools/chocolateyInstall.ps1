$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '6d2247328a531e700d11f0f60bafd3b0f47bcb0b917b55ba59422df548ae2400'
  checksumType   = 'sha256'
  checksum64     = 'b12668ab7ac6c838c202dafc9ee56cb28b9adc4b060cea7d2c0e7a45ebb01ae1'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
