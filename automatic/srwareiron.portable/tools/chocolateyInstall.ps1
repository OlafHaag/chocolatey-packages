$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'c2565c4d9931e254a9924079444700dd04c1dc9420cf046dc96218de7e7e8be1'
  checksumType   = 'sha256'
  checksum64     = 'dea15aa3374397f7e9e7edc45dc121cb39f1c5a5b9dc57cd22d46e43be2d3b3d'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
