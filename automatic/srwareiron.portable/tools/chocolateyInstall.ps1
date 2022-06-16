$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'b0de622665fc73e5c616e8de168d0b967cc095f702e1168ebc2371b894520496'
  checksumType   = 'sha256'
  checksum64     = '4ab97b8cdd5c93fe6f1970a780164b065c4e5f3182b450b9a7c2c880bd19ddfd'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
