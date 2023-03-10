$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'c8a8d3f207cced95d4e57af8f48b7e28c092e6f2a528791d0a69047b688a4161'
  checksumType   = 'sha256'
  checksum64     = '160b2f87479661416cb7ec85bfd41a483711c313023c6b3055dbe180d94d6800'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
