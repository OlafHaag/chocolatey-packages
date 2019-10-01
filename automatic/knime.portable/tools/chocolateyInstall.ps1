$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url            = 'https://download.knime.org/analytics-platform/win/knime_4.0.2.win32.win32.x86.zip'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_4.0.2.win32.win32.x86_64.zip'
  checksum       = 'a8a5485385387e1fdaae12298a942d9aad2942faee76e783a5aed1c22eb9454e'
  checksumType   = 'sha256'
  checksum64     = '8c9c20cf8055d10a7b62125beb53d42a220af843a2a8eef0e295251ad53783a2'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
