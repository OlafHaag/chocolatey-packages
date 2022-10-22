$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '83ee197d30978bbb16d06e0960bdb3f9383bf775035cf0fc2537fcc99d2fc3a0'
  checksumType   = 'sha256'
  checksum64     = 'd288f7e9ec204c596e9389f7765c7d128d98a940f35a3fe97055efe976af340e'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
