$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0980-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0980-win-x64.zip'
  checksum       = 'afc50e381017e2934df3673f3ebf7e7dca59258b3a711784859c67bd249c1f67'
  checksumType   = 'sha256'
  checksum64     = '466c8d798d4ea3e3489c4e953c857f87f7b0b9e02676893ab9afc5df85086a70'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
