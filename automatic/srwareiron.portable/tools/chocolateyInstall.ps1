$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '7137344c9604a0667deb213014aebfb3d09e4c711c572437874811a32168a42b'
  checksumType   = 'sha256'
  checksum64     = 'e3cc296b87b6cb4f0071ef9e88834165091ad32f06a9b8845cb2a5d11f001f63'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
