$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0981-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0981-win-x64.zip'
  checksum       = '4046cac1aa7fbe4288886199813ebf3a6dbd6afc75a40c8ee584efb21ce554e6'
  checksumType   = 'sha256'
  checksum64     = 'c40fd980c90dfc8de9b978275011cfd4b90a138ce9f3ecee67a267f6286823e7'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
