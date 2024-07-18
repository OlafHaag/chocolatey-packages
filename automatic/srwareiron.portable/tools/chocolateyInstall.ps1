$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '81247e6ee4ab119d99d8b446d2f783c8804b5d14b209a0d088413b452badaded'
  checksumType   = 'sha256'
  checksum64     = 'f93145e05a714a385da23022a5d2688abd4975d74ba3d211003bb8a46c567cbd'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
