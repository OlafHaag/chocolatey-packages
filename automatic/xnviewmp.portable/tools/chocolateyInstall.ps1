$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-095-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-095-win-x64.zip'
  checksum       = '6b7dc928ed299ae7d213f4712af3f620c594143ef78f9dd990f87363f6e45176'
  checksumType   = 'sha256'
  checksum64     = 'd79f0df7da1cf4011e964c46b34792aec5bb0f78c18313327e8b76ae3dcbfb3f'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
