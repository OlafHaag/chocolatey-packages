$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0961-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0961-win-x64.zip'
  checksum       = '82ac822c63541d8c199ff58a7567acb4ab82504b111f94fe7bd6a8ccf90353f0'
  checksumType   = 'sha256'
  checksum64     = '9945e6481ca54e8fff2810626c70f2db7f605f87b8bf51d5dedf7fce1d94727b'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
