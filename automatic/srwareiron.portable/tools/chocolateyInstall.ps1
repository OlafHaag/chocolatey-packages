$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'f8597c68f805d080cfa8532f093f05c8f6893629ab15f82acd9a962821310773'
  checksumType   = 'sha256'
  checksum64     = '5372db6fd46ac23990f5a66fb4c841afbb6f4786b42b5db521e499a9927c0117'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
