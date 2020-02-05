$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url            = 'https://download.knime.org/analytics-platform/win/knime_4.1.1.win32.win32.x86.zip'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_4.1.1.win32.win32.x86_64.zip'
  checksum       = '4dcb797c2c383198f6c19c2e80ae7a8eec055c98e3afb3b5fd692503024ce952'
  checksumType   = 'sha256'
  checksum64     = 'bb2ebd4b2a9f304abb364a3c16dde352ca2ac9548985bccf78ebc82371a78af8'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
