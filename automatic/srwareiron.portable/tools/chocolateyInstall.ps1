$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'b0a8fb8618bf03feed7946c149efdcc8590ac07fe0b5d14bf24090355cfa9b70'
  checksumType   = 'sha256'
  checksum64     = '5f1ea798ed1e6f5160f51b371d97751b1b4c6d6d80b383c2cfa4c7b33721b103'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
