$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '36725adabbd93e2413a6859a3de447b9ee619749ec25cc45f0fb5a941f0d3f35'
  checksumType   = 'sha256'
  checksum64     = 'fc376e38462233e2175b7733c8c0f17c6b0c6256048298db87af044a82bf7963'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
