$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_4.2.3.win32.win32.x86_64.zip'
  checksum64     = '6071440ee803c43434fa2f55fdfafdc31419327e39f64813797dff748a08be91'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
