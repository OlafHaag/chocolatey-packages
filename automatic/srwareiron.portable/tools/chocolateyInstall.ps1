$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'e3e7c54b3a389afeff20e49737a1760820ca70a3bab4540687311090f4612280'
  checksumType   = 'sha256'
  checksum64     = 'a34ccdd12535275d55a5c8597169a5533297de3695b9c9c7f0cb9b3753edbe51'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
