$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0996-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0996-win-x64.zip'
  checksum       = '2271a9727fedeb2506f9430ea5e40152d6e4dd6ac6d2801d1705aaa315cb9596'
  checksumType   = 'sha256'
  checksum64     = '7491ad0664f6e24d75e44c56e4b4e0d12fb4e2f951e2e4ae252a8366651cdacb'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
