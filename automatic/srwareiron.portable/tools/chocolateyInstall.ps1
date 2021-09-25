$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'a9cea4b223cc2b6c3633fd7fec1f4a186124440067b4d7e4e3f8e0a8606fb85c'
  checksumType   = 'sha256'
  checksum64     = '1c2a5c9ba57a216f1cdae3f93ca3b62beed1a917d6fde08065e95588d54c7c61'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
