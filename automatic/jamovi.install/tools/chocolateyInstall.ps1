$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-1.6.5.0-win64.exe'
  checksum64     = 'f84fefc4cbbea98c6f7fd1f9596f22d8c9d0a5597cf42e700cbbe3309c3ae227'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
