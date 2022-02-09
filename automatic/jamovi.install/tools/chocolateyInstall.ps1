$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-2.3.0.0-win64.exe'
  checksum64     = 'b338d3491b68b2d2cdd83dc4155b1d7ac9b93ccb09446f8b6a2dede0c6f1a00d'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
