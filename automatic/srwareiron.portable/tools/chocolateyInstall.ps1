$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '91c85847d820a39d4a91269e499ac5737abd309685e879a0b721f814e1093589'
  checksumType   = 'sha256'
  checksum64     = '82eef97fe147c3705b8fd868441b58245d69418e5c8d01a78656449f0a7b5499'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
