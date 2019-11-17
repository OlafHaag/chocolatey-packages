$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  url            = 'https://drawpile.net/files/win/drawpile-2.1.14-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.14-setup.exe'
  checksum       = 'f443d65a4eb7453e8dba751b882c5e57e7b551ccb53616515c6669905dcb8160'
  checksum64     = 'ccb88c7e38372a0e3c120158a00f6dd6436999165062810a7b1dae2645f9578a'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
