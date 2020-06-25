$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0963-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0963-win-x64.zip'
  checksum       = '006fdb37cb164b6ba0266006b12d7878ef108ec95be6b7becae38a86f76d4a9f'
  checksumType   = 'sha256'
  checksum64     = 'a197993390f93c3bcf04f6f765be732e059e723b4d5df8467b547ac3808fe2f2'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
