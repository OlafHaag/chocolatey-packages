$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '482f94ca0df7603357d0b78692a959a461a4d1c527a55f3832df8334af8c6a9a'
  checksumType   = 'sha256'
  checksum64     = '1a1663c7fc146226f022a82734dc24c869ef1cfa6b6867787ebb7ac53664916d'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
