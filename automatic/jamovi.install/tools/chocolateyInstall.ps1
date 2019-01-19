$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'zip'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-0.9.5.12-win64.exe'
  checksum64     = 'e0ca4423d50969597d04048d982244a9578fde5da06a92fb293c0fe046f07e3d'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
