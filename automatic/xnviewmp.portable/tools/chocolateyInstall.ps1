$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-096-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-096-win-x64.zip'
  checksum       = '6ed6f6f80bcacec396fb19fe4d652d2508b735dfe42fa4a121b9ed360faeba3b'
  checksumType   = 'sha256'
  checksum64     = '7c5db6dd19efe3a6511b97f3c882ac8d534e383e48333ed11f042ba4d8dab211'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
