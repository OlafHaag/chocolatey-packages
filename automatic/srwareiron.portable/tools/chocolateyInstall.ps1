$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '67e41905ac3bc3abb7b6a8d781637b4d9f897310b0a5c47765e418d99e63c75c'
  checksumType   = 'sha256'
  checksum64     = '25fba665b07cb9cd0154ae7eb201fa2d6fb83cde3c795be855e7be9f3ceb0f5a'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
