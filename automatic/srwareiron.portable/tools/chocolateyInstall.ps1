$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '409c401abd88529b9441d24b6193f071f12d9576894bd11f41beacc5031eb03c'
  checksumType   = 'sha256'
  checksum64     = '156dfe6549c24bc77f782ef3d404f86bd0ca2f10f8c7de1a49eed12d48e935db'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
