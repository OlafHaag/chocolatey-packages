$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '55e70ebabe10937e055d4f72fe642089ad2979b75edc48c96d2fc3e8ecdac397'
  checksumType   = 'sha256'
  checksum64     = 'd5147c0dee0ab95e4c7b80da42890283d366d9d5e4adadfa4fbd94a8f43b9203'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
