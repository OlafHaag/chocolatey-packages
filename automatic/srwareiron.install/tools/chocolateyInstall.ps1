$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '2624472a8d9b77a12f67482ccab4c887409f6446c7c0b482e4e00b6f13dd79cc'
  checksumType   = 'sha256'
  checksum64     = '02894dd7ede5e4b99c901971dadd5a3a88297a2dbd57e7d8b2e685cac2dc36ec'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
