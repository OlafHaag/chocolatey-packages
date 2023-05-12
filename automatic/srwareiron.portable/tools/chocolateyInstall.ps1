$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'f566bdf4de756b0f5c76a13cad5688dde21796f12f08a4938092f68a7755bc76'
  checksumType   = 'sha256'
  checksum64     = '3431d7e31cc29527f1e288de0093a4a6020af701ce40157bdb25b60ee49f699e'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
