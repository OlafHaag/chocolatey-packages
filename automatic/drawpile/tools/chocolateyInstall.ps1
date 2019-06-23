$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  url            = 'https://drawpile.net/files/win/drawpile-2.1.11-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.11-setup.exe'
  checksum       = 'd5761debd2fe6f52f4d221d65a497b99d2d71b7c2874cd8a44883f9b96a01bf9'
  checksum64     = '864beca94361ebee7615c37d451f5935a0114d558660a090b529716351f5215f'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
