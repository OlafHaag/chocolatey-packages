$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/XnViewMP-win.zip'
  url64bit       = 'https://download.xnview.com/XnViewMP-win-x64.zip'
  checksum       = '45a48338fda2522adf9ebc2790d0420f0de640a1d3f0c9fbd31bf786a1e38119'
  checksumType   = 'sha256'
  checksum64     = 'd89ce19291d66d2c0cc06b0e99c12f327a799d538c359bd5ab1794e6d3bc5c5c'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
