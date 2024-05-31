$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '5d59cbabbfc1119584925ac182a6ac16d75a03a8f181a318e7437da6bcbcdeb6'
  checksumType   = 'sha256'
  checksum64     = '1d8503b703d4b9b03c3ee86257d446e3a8ce9ad23dd25380e84b42528538f4d0'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
