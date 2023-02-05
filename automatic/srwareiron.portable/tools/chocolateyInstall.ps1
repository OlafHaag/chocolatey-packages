$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'fff53cffa67222ebf32f9deeaaa1ad4d526fc1a269e15459801bd54925346116'
  checksumType   = 'sha256'
  checksum64     = 'f7bcaaa8c63588c4279a5f6208b3944202e33f66eeb4e109e1f75f0ad751f70b'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
