$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url            = 'https://download.knime.org/analytics-platform/win/knime_4.1.0.win32.win32.x86.zip'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_4.1.0.win32.win32.x86_64.zip'
  checksum       = '088b9a5a6821a98333de7af02ad7ed6e93e04fe0e233aa20d15ebc47a85234cf'
  checksumType   = 'sha256'
  checksum64     = '55564daaeba5b24719e3ac61076878e05dc5493d6ae5e9fc5aac4dde9271d98b'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
