$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '9a2b353d3a55776df5f2b51599b0ace8c4e81056f4be133b8516af8dff9ba630'
  checksumType   = 'sha256'
  checksum64     = 'c0b5797e512b28f5fefb789bcbce4a3ed46b573eddf5dc4fd684972c53748555'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
