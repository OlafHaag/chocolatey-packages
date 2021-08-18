$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'fafec0320ac7d1e5974eae16ecd4f7f896994ba720dca6a1923ac4b757dd2895'
  checksumType   = 'sha256'
  checksum64     = '929836031ce248c86ec682a1e9dcfc405acae37f648c8569bca301deeaefaefb'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
