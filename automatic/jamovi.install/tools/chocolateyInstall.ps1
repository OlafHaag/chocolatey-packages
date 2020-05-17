$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-1.2.18.0-win64.exe'
  checksum64     = '8f27b5882f69566e2fcc2e1ec738a4cdc20c5e1373eb19ad136521d985aa7e06'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
