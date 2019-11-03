$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  url            = 'https://drawpile.net/files/win/drawpile-2.1.13-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.13-setup.exe'
  checksum       = 'e1f35c9ee4ac019d995829e31f05a15f92c0618008fe5d4dba23edafc7368d73'
  checksum64     = '9ca4d954f221ecb395e2f5c16fa381f1fb87262cdc82265b3a9b9b0424903300'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
