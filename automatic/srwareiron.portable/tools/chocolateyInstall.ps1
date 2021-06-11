$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'a1e318a8007bcd131758f118e5d85cb1b9ff9ba5237de0ac264768d7ff8dd1d5'
  checksumType   = 'sha256'
  checksum64     = 'f29f8b81186c8e426f45797245814c35c382cd258b4f6750bfce2f8cfaf7bfc4'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
