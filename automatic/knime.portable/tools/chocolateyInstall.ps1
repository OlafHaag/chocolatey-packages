$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_4.4.2.win32.win32.x86_64.zip'
  checksum64     = '8c73aa3f3eeb339be6123bece299bd78d5a907c46ca2e581ebf9a1738dcb6fd2'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
