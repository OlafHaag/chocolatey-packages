$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0982-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0982-win-x64.zip'
  checksum       = 'd3c9da0fefec6e00011f35de8e655d36db24824435165fb30b8b2720be932b4f'
  checksumType   = 'sha256'
  checksum64     = '82554a5742b203493356aa5d5363a06892da492d7edf9bf95cdd75acfaaf4fcd'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
