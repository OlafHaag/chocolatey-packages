$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'regard3d'
  fileType       = 'exe'
  url64bit       = 'https://sourceforge.net/projects/regard3d/files/Regard3D/1.0.0/Regard3D_1.0.0_Setup.exe/download'
  checksum64     = '8e3cf81b3fd5baae606c3634465432df8633c1cb24c414c6f07920774352a57b'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
