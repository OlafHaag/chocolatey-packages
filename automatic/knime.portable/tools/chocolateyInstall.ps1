$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_4.5.1.win32.win32.x86_64.zip'
  checksum64     = 'b50b4fe31deeab8ecf4c92fdfb772ee3d90e42e9dfa3d2a377af72ce42d41659'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
