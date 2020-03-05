$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url            = 'https://download.knime.org/analytics-platform/win/knime_4.1.2.win32.win32.x86.zip'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_4.1.2.win32.win32.x86_64.zip'
  checksum       = 'f7d17a5de78e822295cdf7498d5727bbc40b2c44b130704d8b1f166fae444c31'
  checksumType   = 'sha256'
  checksum64     = '3ac92721b0b5c3f6f1f256b65e87ca8882a1f9d9907075eece3fb494f46403d6'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
