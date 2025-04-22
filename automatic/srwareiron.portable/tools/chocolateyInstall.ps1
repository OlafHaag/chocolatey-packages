$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'f1c0cb33e1c053e09cdcd0b6151555bde643a61217031cfa5d7045a0da752c1c'
  checksumType   = 'sha256'
  checksum64     = '98c4dfe537d6d3f7a149d88a2119fe8a96c3280dd738bbaaa676b6202d2a8a90'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
