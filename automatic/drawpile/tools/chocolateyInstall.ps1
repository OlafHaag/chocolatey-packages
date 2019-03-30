$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  url            = 'https://drawpile.net/files/win/drawpile-2.1.5-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.5-setup.exe'
  checksum       = '54838fa0ad0e5c85f3fdfe4e7cb3f69a02b44c5d7afb0c2c29bc4b331928eba3'
  checksum64     = '6cb3dd9d6cc3e3955a9746ac4c7e3ed7595f3680fafa120fe4c475f85aacf704'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
