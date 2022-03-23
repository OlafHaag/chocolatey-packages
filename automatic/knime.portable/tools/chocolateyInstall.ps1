$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_4.5.2.win32.win32.x86_64.zip'
  checksum64     = 'f8ac7c0ba5970cfab3776e2f7436c87ad1bb11a140bbb34981c5e3bc6e855613'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
