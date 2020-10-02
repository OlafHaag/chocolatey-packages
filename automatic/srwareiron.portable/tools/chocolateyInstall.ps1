$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'a3b2ef45928c1f23ce357ec2df7d8f1fd9490d37afc798fae5ec0a53dd7283ca'
  checksumType   = 'sha256'
  checksum64     = '2583a3df1056947324a7a2d5e21585d2c11327a65d516717d578956e968459f9'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
