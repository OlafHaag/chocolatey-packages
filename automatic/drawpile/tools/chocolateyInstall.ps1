$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  url            = 'https://drawpile.net/files/win/drawpile-2.1.9-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.9-setup.exe'
  checksum       = 'c91a4d3269e0317ec9746610859954fe8855980d0a26af9190c2dbf384fc924e'
  checksum64     = 'f875215bd312df4596ef4ea448f4464be39f79ab512b76dd9fde263e98fc8d0a'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
