$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0971-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0971-win-x64.zip'
  checksum       = '55b8f20a4f5c02d164702304cd180eb5e179929951444cf6e5374448746932eb'
  checksumType   = 'sha256'
  checksum64     = 'f29791514ebde0f589d69227511909dc01aecc8d3ace923eba73479c22f00b39'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
