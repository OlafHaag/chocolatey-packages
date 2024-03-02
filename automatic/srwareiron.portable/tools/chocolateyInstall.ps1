$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '7382459838d387f7289e22196699b446c5f991496e9833d487f5c6fb239e300e'
  checksumType   = 'sha256'
  checksum64     = '0d9046db750902f5808760b615b17b68be5f2a72fd8f64bfa6edd964edf96ea7'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
