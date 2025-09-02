$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '91ab74fb2699566adfdf6ca0e0758e4e70f929bee0903abecd5f759537d95b82'
  checksumType   = 'sha256'
  checksum64     = '296ae5c4bb77dd99d20f386424ba9f9b8c981dbf6dc198efa9652a41567b4450'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
