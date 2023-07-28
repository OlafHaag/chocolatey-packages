$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-2.4.2.0-win64.exe'
  checksum64     = 'bbb45f5f5c52b9bfd6a1dc04e15180e98e14cdf6c82a2c3717e0ca6fe7abe02a'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
