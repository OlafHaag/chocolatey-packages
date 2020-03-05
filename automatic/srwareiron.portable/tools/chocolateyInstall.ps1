$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '827d1d8fcba03d8c7a3584a673b70035c319264bf476c8f27fd4e6dd27e577ff'
  checksumType   = 'sha256'
  checksum64     = 'e4edb5a181dec8680e4a7766e6de6f215679ae10dfd831daf0c8e07c643f62a9'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
