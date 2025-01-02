$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '08ad4ebc0e5b6692658027c0d89b2fffe7dd061e02084a4e661ee2b701ea3b0c'
  checksumType   = 'sha256'
  checksum64     = '6f22b4635248655d03527dc4addda70d4f869e99a0bdbafcd796058fbcd86454'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
