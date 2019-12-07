$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  url            = 'https://drawpile.net/files/win/drawpile-2.1.15-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.15-setup.exe'
  checksum       = '338540184d8de391e3f0e7b17dafe24a753dff08c24bb3d447b2b1361e041751'
  checksum64     = '36ee7e57a9d95785a45f9ae1bc09a226f741f582dc41b15a5f9f2f3495eab43b'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
