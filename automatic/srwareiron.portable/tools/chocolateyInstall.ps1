$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '4eeb424bb605be9586bb50d812e34b89bab1c0be654757d8d474da8e1de9e0d7'
  checksumType   = 'sha256'
  checksum64     = '27b3dd80effe4feeaec63a37e33d3a363f9a504ae4b01826e4de40e3c0d1e949'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
