$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-1.6.22.0-win64.exe'
  checksum64     = 'a0efe0cbb1647f5d5eb55a7eb60847b0d1025f16ffcfa6487afb4071fe0dc2fb'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
