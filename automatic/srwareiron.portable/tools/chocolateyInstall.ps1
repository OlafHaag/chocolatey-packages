$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '5550ad2179182d369aa5b3922cde038077969f9d460fc11660dcdc83ac7c997a'
  checksumType   = 'sha256'
  checksum64     = '4dd6f44b1cbaf7cf1228e34c1e262396b1e1c1ebb5cf0ae056127558cedcfdd4'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
