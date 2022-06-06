$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '83b4a97c0d1fe5a7839421b78ec6123bea61df39fb9d4b98cb2d54be66aa432f'
  checksumType   = 'sha256'
  checksum64     = 'c24da248e36a33aa768b14bad02827ace0ebbe0e9059d3b6e9b7304d5f1597b8'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
