$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0943-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0943-win-x64.zip'
  checksum       = 'de5e58b6006a4f20a0362ddaa63ef859c80ccd0c30c1c1445123f2101b39c0fe'
  checksumType   = 'sha256'
  checksum64     = '1f81bc39febef699db08656cc8ebce8da75034bb8fb69169e1d310218934f8b8'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
