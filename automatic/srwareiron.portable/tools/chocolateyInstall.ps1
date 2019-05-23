$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '4d065a8b2f3f68a3f7999c73100ff4bf141bcd0ce4ae3ac2c39533ab903486f1'
  checksumType   = 'sha256'
  checksum64     = 'dec74ec9c778345a04bbc4b447f22b04fcd3c7fe6a820382966e4cdb073c35f9'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
