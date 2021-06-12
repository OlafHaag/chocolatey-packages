$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0984-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0984-win-x64.zip'
  checksum       = '9ebecb5ecda999dd342840966c4b604df4eacc63862c00860f1d1fe40fc9f5f5'
  checksumType   = 'sha256'
  checksum64     = '6200c8eb5a974aaad78e09f3248c2fdf3ea7274184a42b4b3bd81e5e81b87646'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
