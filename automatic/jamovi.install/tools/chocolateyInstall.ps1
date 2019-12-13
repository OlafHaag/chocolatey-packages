$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-1.1.9.0-win64.exe'
  checksum64     = 'fbd7e1e8bc8918fa5017c00b3f78bcadf9224fc463a397559657db5efc4bbd57'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
