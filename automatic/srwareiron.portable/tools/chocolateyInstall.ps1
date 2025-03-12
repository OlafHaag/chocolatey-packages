$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '6974d7dc5bcb71ee231a6e2c65b89c383848c1033446a4ceefbc6b4bcd170632'
  checksumType   = 'sha256'
  checksum64     = '6be6b3710cb93af7216fb16596910e94155df2de6a63228894f0a9f2b62bcc44'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
