$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-2.2.1.0-win64.exe'
  checksum64     = 'b504be244cba7fd7f0812ecea04b5fa4c3d2023d5253f85d6a3b287c3a33ef64'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
