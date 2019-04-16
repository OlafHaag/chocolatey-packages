$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-0.9.6.9-win64.exe'
  checksum64     = '9671a9304dbacec5822ac1d141a409d43f6c6546d9691ebbbad16e4b47f5d516'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
