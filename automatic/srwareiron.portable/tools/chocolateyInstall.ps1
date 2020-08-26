$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '98c72058a2fa6d65fefadd03b35e148a7de0ddafd0f6976d20712745beff2ac5'
  checksumType   = 'sha256'
  checksum64     = 'c725ada98d12608200d17bf8aa3ef8db74144c17d7f3e2ab32a1b696bfb6b7ea'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
