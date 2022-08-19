$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-2.3.16.0-win64.exe'
  checksum64     = 'd9628ee287fe312ac3fbc7a6ab11ec66cf0121d2ce7ac6028f89b35fe0e623ee'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
