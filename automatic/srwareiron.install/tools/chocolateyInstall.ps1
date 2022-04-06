$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'c4ab6dd4aa3ef40e2d65117fbd39e5396d7a6c82384f9d54ce135c8b5224859c'
  checksumType   = 'sha256'
  checksum64     = 'a03c4028e7a9787251052831a2a2b3746d273783a2b438153c9e2bd44ac663cd'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
