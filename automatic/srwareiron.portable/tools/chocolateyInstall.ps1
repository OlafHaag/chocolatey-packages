$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'c49474708978ae2eab737b77ba56e94d9c6a74b03e6e93f4fbd9a08f24563fc6'
  checksumType   = 'sha256'
  checksum64     = 'e7275ff4660819b4b7d499b5d200f9759e5ce50f609771b75148d46cbe8d78da'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
