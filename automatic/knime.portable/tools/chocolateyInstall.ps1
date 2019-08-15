$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url            = 'https://download.knime.org/analytics-platform/win/knime_4.0.1.win32.win32.x86.zip'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_4.0.1.win32.win32.x86_64.zip'
  checksum       = '165b951990f7dd31b1bb51772187810428509cf7352d68d9767339659269a834'
  checksumType   = 'sha256'
  checksum64     = '7d86fec6f7bd1d4a2519294fb9773909783307bc206f871dc53e66488a6e4bca'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
