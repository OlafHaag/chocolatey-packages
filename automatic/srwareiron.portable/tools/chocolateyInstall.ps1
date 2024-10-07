$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'd9e601887a43d76a4e8dbdf26b6cd42d9f00f642503410d85a499a5d42550020'
  checksumType   = 'sha256'
  checksum64     = 'cb3e10ca3ed264da8373dc8911f564f74befb980531053e6d9d9cb59fd8d256a'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
