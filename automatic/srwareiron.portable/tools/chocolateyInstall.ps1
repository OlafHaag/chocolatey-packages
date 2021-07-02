$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '93feede2870d9ded9c91fc3b5b91c35b28d69bd0b22297a1add2a2ca3bc3b48a'
  checksumType   = 'sha256'
  checksum64     = 'e4b1b305965c8934a708fe72ba972aff56808104c27657a93301c4bb018e79e8'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
