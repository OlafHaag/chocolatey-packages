$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_4.6.0.win32.win32.x86_64.zip'
  checksum64     = 'bd130370ef3cbc5e2aab09c1bfc0147eed66513eb83362dcba6700c1a1b2acd3'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
