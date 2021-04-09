$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-1.8.0.0-win64.exe'
  checksum64     = 'b45020436b64e37ca9eb872f7a7a7ae6b56425db27e6a670c2c12068fc5fba23'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
