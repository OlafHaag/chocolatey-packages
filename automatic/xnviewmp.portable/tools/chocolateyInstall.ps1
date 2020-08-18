$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0965-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0965-win-x64.zip'
  checksum       = '00025e31c4d7187132c0881d5e458309f942f8404c9d43bfb4d31b343b5cf8df'
  checksumType   = 'sha256'
  checksum64     = '3745d58a1a337ef5108497f6f09257193cb6008b1b6578535d5726f9bff6315a'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
