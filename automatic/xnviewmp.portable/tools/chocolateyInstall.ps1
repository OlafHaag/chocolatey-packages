$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0970-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0970-win-x64.zip'
  checksum       = '250bbe597658ef9245114c09a93d5caf77a316079c19aa8383585575630e8868'
  checksumType   = 'sha256'
  checksum64     = '146fa8d3ef519ecc49463e1e6573eb35fcbf9f692c44f487408a25fcf7f74781'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
