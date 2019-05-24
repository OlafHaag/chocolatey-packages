$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-1.0.0.0-win64.exe'
  checksum64     = 'd087345fa3ccbe84144488437e11d4baf3bfdb6a046a513c11a533adc5143268'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
