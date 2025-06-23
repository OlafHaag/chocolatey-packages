$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '14b87c5c3ce7819e7d5c02a311ccdc235f011632191dafe0b310f5be3424ac3d'
  checksumType   = 'sha256'
  checksum64     = '8de076c8bca3c93f43b8132d69e2537999da4478e3d8c516cb775a68af54d5d1'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
