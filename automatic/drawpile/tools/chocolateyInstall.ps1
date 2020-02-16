$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  url            = 'https://drawpile.net/files/win/drawpile-2.1.17-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.17-setup.exe'
  checksum       = '15c969eeee46aeb594cc096251a6521a6950ad9cafc12dee4951ecc1e7f9a0f9'
  checksum64     = '0b1d66f6a432643cb9192eb8ab991b387e4e0c677d70258314702f7a08be2ab8'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
