$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_4.3.0.win32.win32.x86_64.zip'
  checksum64     = '36389d9c542eef679ba22bdccb0c2980b6cb84fe7e83925716544691096632f7'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
