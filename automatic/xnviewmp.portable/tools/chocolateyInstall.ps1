$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0942-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0942-win-x64.zip'
  checksum       = '57a235100e7e9d2d778ff2faaae8af5c2429424fea7b7e616ba7354bebc19633'
  checksumType   = 'sha256'
  checksum64     = '701e68260b11ad8d0b410dc8a3c679dde5a8371ed33d45d510465359ba0c5ef7'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
