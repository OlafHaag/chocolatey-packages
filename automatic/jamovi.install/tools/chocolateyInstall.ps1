$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-1.6.10.0-win64.exe'
  checksum64     = '343e4ecc138bcf73cab29fe116ff79bd3c8f52ce8e835bb35766ee9b096ba9e3'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
