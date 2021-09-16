$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0990-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0990-win-x64.zip'
  checksum       = 'bf0619f9cc0a91a82d428966fd2f58f1488073bd84e04479e3608b39854359ea'
  checksumType   = 'sha256'
  checksum64     = '655d7bf9110c1366f574611d6692364def68fda1fa50c04125ddc3ad639b2925'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
