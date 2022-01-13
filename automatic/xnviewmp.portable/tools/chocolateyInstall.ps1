$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0997-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0997-win-x64.zip'
  checksum       = 'ee782f7857337697506e6fc87f24dca123f5cf909c894113403205a1c89d4262'
  checksumType   = 'sha256'
  checksum64     = 'e526025f69515c6ed87f50e7aa72602418dadb250142d287b2e086fb7b40e912'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
