$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'b9b1f9a8dc3bae1958fd3b0be87c842047f7b1f5d6dfda8ce7022cb17965258b'
  checksumType   = 'sha256'
  checksum64     = '1e78906a89ed6e69004453d2c6e5766f2e964b5b53bfc86922f04bd92d04200d'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
