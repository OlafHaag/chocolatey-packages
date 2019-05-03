$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '77350ab7eebff08f2ae15a0852e169d81baa38ebcbd630180512fdfb065e35ff'
  checksumType   = 'sha256'
  checksum64     = 'eb1506ec8656f8d71bfe0bd7f7871925a9ecbca64dadcd259bd4891c34fef6ef'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
