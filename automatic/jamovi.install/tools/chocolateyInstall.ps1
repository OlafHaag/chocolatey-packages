$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-2.2.3.0-win64.exe'
  checksum64     = 'eec2bc40eb7d8f394b38ffdccea4264b2110b5022ed0fc4d5aa66c4187144e2b'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
