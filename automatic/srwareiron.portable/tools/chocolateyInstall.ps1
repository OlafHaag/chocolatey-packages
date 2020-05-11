$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '43110983ab91e0a62eec2161642949c194172cc3dfb2df41ad568d69c08e901b'
  checksumType   = 'sha256'
  checksum64     = 'fe09af08a6eb558af2d7919579430d55bec2b82c96f79b1240eec50bb062ea28'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
