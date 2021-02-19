$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '21a29e81c9701ad1c166b9470f856338b9d33eca95a43d26b6ee9a2e9c18e78b'
  checksumType   = 'sha256'
  checksum64     = 'c0161e76bfb2cbda5da3016ee8d02d5fb8fd11fd5aa5b88c28bb7b2e76d26f28'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
