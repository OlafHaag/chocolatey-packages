$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-0.9.6.7-win64.exe'
  checksum64     = 'f8f6e1fbfd1347f74dff84f98a2bfd76c240a2093cc89774aa0a8d26a20b6a94'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
