$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0994-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0994-win-x64.zip'
  checksum       = 'fe16b6eae044639a3c006665740dc0f92134a45b653e3614e6acbbda4450b576'
  checksumType   = 'sha256'
  checksum64     = '95697e3e242adea7aa1c07905b907aff11e0ccb806259900a88221b5342322fe'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
