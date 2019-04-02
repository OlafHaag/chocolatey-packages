$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '2273fec6f829ba69ea5d8843f1e0a3c9d2f8a7d0971c7bed8a731953d3d09177'
  checksumType   = 'sha256'
  checksum64     = '06c263a1b07d83cc7fcc60ef65f5c4c1d3363a07b51338b5aad42927e81797d5'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
