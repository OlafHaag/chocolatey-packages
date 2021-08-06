$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  url            = 'https://drawpile.net/files/win/drawpile-2.1.19-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.19-setup.exe'
  checksum       = 'b9bddca67ff340ae082a59a4663037cef58ff889453f638c81acef6dc10ebfc0'
  checksum64     = 'c6eb9a6a34de0354c880b154bf1a0bb273ef55078a7a942e250eb4ba845bcba7'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
