$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  url            = 'https://drawpile.net/files/win/drawpile-2.1.12-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.12-setup.exe'
  checksum       = '0009257b09b796cb4463abc514bac7d891dc1bd412d4ee4e37f91a073759f8ef'
  checksum64     = '2369ae91a453bf05b739d64c2e629502e73a9102a2c449c7b1c46847d13ceb8d'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
