$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'regard3d'
  fileType       = 'exe'
  url64bit       = 'https://sourceforge.net/projects/regard3d/files/Regard3D/0.9.5/Regard3D_0.9.5_Setup.exe/download'
  checksum64     = 'ca76a607220c0ce2ccd77d862407810ff1fbddb127e7d4b79f36901c87f33dc6'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
