$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'f4bff40685d502a7a19f858fa006fbb40ece76cd88018e8e3dd61a353dfca884'
  checksumType   = 'sha256'
  checksum64     = 'be7207efe1d4abcad8301f63c3e0fb2f5e9fef90602986c354032368f16efda4'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
