$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0964-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0964-win-x64.zip'
  checksum       = '0c651b36dc56a7b45c34ff5cc362c749328919ec5654d9db44af116fa2a270b5'
  checksumType   = 'sha256'
  checksum64     = '8ed1370ad3ea16d5ffbf8617ea449791634566ba0dfb13c1078c33edce467e80'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
