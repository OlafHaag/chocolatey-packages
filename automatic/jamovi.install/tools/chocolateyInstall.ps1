$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-2.3.12.0-win64.exe'
  checksum64     = 'c3ef0b9073af07061517f96e0a580bfdbc4d4a3a95a8c33e0aa7dbf44a24ea61'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
