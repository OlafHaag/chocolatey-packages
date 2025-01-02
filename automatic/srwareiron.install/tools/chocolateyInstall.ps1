$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '2c64514ae0dcae64d955ada1bb58a8763f418a2c61168b27bb7be10cd124dd46'
  checksumType   = 'sha256'
  checksum64     = '5171109d19e3ea585c228046800b71fcbe2378cfec4adc9afd56629284da72e1'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
