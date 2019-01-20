$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/XnViewMP-win.zip'
  url64bit       = 'https://download.xnview.com/XnViewMP-win-x64.zip'
  checksum       = 'ddce70809f170e52617e3b139c6e58aa5307db5b8e77a97ae0e3de1f38a1a6cb'
  checksumType   = 'sha256'
  checksum64     = 'f580805be136cc8acee881d54ec3e529e9e84464c878c32c9c11edb0e67ee7ec'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
