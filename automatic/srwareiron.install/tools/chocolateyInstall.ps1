$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '993d9450bb23fa7b55cbbcc5605fe53a5e955f222458082737c38f28a31acd9f'
  checksumType   = 'sha256'
  checksum64     = '4f8185479eee7215b8e875076da854f9cdf5bb5ff254705ddbd863432976aab6'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
