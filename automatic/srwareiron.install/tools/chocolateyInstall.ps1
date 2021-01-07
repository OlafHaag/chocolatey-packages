$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '99d03bb7d33c7c691be6b1d8514b884c8a327022c2f8a2ecd2ed93d25ec86516'
  checksumType   = 'sha256'
  checksum64     = 'f7b86e086f9dd3d60b9604ddeef669fd807b1e0ba183595b9c5853ba38b0fd2c'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
