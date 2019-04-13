$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  url            = 'https://drawpile.net/files/win/drawpile-2.1.7-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.7-setup.exe'
  checksum       = 'ac04bc7a80ef698f476a82a1a0227e65a46b543edd2603b1d92b955d67ff9958'
  checksum64     = '9ef7680015ca5ba42070cbf25d10a51f39fdd9440ed3a7636194f160c46ce69e'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
