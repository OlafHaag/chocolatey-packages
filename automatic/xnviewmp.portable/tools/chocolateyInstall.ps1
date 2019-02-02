$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/XnViewMP-win.zip'
  url64bit       = 'https://download.xnview.com/XnViewMP-win-x64.zip'
  checksum       = '7fd3874c81db5f28e089a4ed4ec3626e54d840ce41e0e4a31384f3aa76f2389f'
  checksumType   = 'sha256'
  checksum64     = 'c053f9bc457b5d3fcccfd841394d758c0f64a61efa07801be35aea238f853e23'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
