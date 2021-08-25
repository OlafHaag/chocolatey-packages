$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_4.4.1.win32.win32.x86_64.zip'
  checksum64     = '58d36a3246531066d081ec5ec5625cc0bb449e62c60dc6c42ea92b4ff8052ff2'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
