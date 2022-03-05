$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '4789a98b76da2677b0c3ae138d12c9ebaa863c77af89fc9a7e1dac08839f4dfd'
  checksumType   = 'sha256'
  checksum64     = '652b604e99d266385b48c4c8a91dfa3c881f2ee29d7b3af763a5ee081ca64324'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
