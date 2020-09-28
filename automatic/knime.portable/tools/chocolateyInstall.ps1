$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_4.2.2.win32.win32.x86_64.zip'
  checksum64     = 'e081cabb5ae1e7edd91ab982abfd1591ea9f85b8ab409f4da05a61c7f037c7d9'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
