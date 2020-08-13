$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_4.2.0.win32.win32.x86_64.zip'
  checksum64     = '45233650723d68f733d2fa4cb1c843695c32c54173d0e1100e285723b1f61ac3'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
