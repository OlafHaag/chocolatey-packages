$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url            = 'https://download.knime.org/analytics-platform/win/knime_3.7.1.win32.win32.x86.zip'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_3.7.1.win32.win32.x86_64.zip'
  checksum       = 'e770809f1ee16137e675354e6648e0d999a3aceff3a876a11618290508d9a171'
  checksumType   = 'sha256'
  checksum64     = '302940072e5907a84de166bbf43d1807eeb74723ae05e0ae86124f55f53931df'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
