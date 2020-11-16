$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '9fe5c183e04af02cb1a05cc49a5ad5f3485364b6ea2e8d2e99507f31e14316a8'
  checksumType   = 'sha256'
  checksum64     = '6a81d5e7383a6bb0ce2707aba53121c93a1247bd3eef2318d66c6803e390f2ee'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
