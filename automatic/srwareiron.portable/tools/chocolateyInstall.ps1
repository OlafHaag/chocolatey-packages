$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '028707eefb7165ba8fac0bd55121bda044e0f42b9bddda042f37a773f4d398e7'
  checksumType   = 'sha256'
  checksum64     = '568f60fbedc4d7fe41b4deabe57dca1b7b97e13f241795b0067e251f8820b16b'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
