$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '8578d56a94ea7d505c444c5a6b02aaaafe5a8578580f0eb30a752053b027db8f'
  checksumType   = 'sha256'
  checksum64     = 'a4d4ace9b26b8c756020a231d7d8d46ef4e6822b05b96f484289aad8f34e2330'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
