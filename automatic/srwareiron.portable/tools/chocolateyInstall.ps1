$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '44c1ef874b0db0ab0fd4dee4ccc31918312040c9402611684a67ea11d3626425'
  checksumType   = 'sha256'
  checksum64     = '1ddc7875072349976608d9487e02c9d69bb3b1e7c60902dc207b12046fc46daa'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
