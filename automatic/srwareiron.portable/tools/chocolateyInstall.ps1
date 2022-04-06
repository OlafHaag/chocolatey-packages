$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '962b89044c611152acd41365630960f7c68939174b7bfbce0fc6469f83496ff3'
  checksumType   = 'sha256'
  checksum64     = '21b48cc295175c87ac04f6f953ddcb2a9c7d0122ac5a3fa91001f78570014140'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
