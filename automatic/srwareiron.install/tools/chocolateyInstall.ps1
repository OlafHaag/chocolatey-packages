$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'fc8f91a489a8fbb486a2f003e999c26564c80df9a55643b7cb22d60ecadb1739'
  checksumType   = 'sha256'
  checksum64     = '1d21eb354ae084624075905a2fce73cb8d9c45e021b2acb924935d851f569775'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
