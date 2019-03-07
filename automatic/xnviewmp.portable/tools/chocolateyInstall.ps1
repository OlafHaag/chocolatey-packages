$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/XnViewMP-win.zip'
  url64bit       = 'https://download.xnview.com/XnViewMP-win-x64.zip'
  checksum       = '21f9d891f6243e71c9501aaac69c735962bba0249be5922a6da436611276c553'
  checksumType   = 'sha256'
  checksum64     = 'd0c08ba12f253207064e74ebb5cd866410998031ace74a43dbbe01275ddeb179'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
