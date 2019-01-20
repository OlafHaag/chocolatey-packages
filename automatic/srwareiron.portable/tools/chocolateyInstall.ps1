$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '1d49ce56d84ae303e5ca45bc7121ca34fff37e9434e4433473eae925b37ebc82'
  checksumType   = 'sha256'
  checksum64     = '495edae9d7d228e49f6ffef629844215ea8c25a1c2822e01d75d925f7149053d'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
