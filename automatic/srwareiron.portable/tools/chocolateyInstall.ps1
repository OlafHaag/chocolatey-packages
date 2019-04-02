$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '35ee0d35eedbe96dab5ce628ec201ee95c56ceaf54051de80f28ca2fa5fe2b9d'
  checksumType   = 'sha256'
  checksum64     = '90d8ba796cafcfbcd6d6722d2f66551f63b910171afede045914b6508f31ad03'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
