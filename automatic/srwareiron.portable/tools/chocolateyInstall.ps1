$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '55aa8689f526fb81f6d076ab27c08673fb57ffc61a9c37179b62a75ffb528046'
  checksumType   = 'sha256'
  checksum64     = '2495f1b78410c6e5420e5b1fd179bde41ea4b4adbbc8323f0f06e98cffb6eda7'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
