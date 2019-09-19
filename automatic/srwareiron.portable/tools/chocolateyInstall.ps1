$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '2102a8daee4bb92e770de85d83d9fa483a5cce362858346e91b4108015aedf62'
  checksumType   = 'sha256'
  checksum64     = 'a77965e22d28c364cf20537b13bad3f47f33752895c717297ef04b136941e07f'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
