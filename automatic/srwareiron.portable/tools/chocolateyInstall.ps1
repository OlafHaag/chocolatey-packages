$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '9d819239adbe22166d25403077df745b3b6302dc6ea21ee8c5f57c6556ac8e44'
  checksumType   = 'sha256'
  checksum64     = '5d0b3805ec57da3e3fa578d632997d4a519572a210729eb5d5bac63c7202ec0b'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
