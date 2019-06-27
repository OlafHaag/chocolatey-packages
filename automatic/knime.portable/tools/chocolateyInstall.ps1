$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url            = 'https://download.knime.org/analytics-platform/win/knime_4.0.0.win32.win32.x86.zip'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_4.0.0.win32.win32.x86_64.zip'
  checksum       = '9060477ab71c5ef7c5cdc79ab1ebe63159b07064ce3d85eebe97c58c06b3c41a'
  checksumType   = 'sha256'
  checksum64     = '3147bfbb3accd99fb581a6382ed4b002c6e4303776cbd0d371c4cf0e60714a47'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
