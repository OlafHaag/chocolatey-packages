$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  url            = 'https://drawpile.net/files/win/drawpile-2.1.20-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.20-setup.exe'
  checksum       = 'ffb20217c890f3c874df40bb9c43fe1ec843ba76eb2fc636c16ce45d3a0f05df'
  checksum64     = '878a47414d5209e784a415d507aac864827490f106ed0290802a333d641a7ac4'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
