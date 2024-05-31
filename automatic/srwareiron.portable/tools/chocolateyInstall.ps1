$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '3df1fc5327fc4be847bdf80d087c836b6afcb8bd64dee64039f4efe0331f9989'
  checksumType   = 'sha256'
  checksum64     = '849c6c3525dfcafa5ffefc43348aafde037b3a9f5f9e47397c124fb162fc1e1a'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
