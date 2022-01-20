$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'a12e1bc875bf4c7d30ac278c05ac46fd0568af7fdc5483f386d430141fd194d0'
  checksumType   = 'sha256'
  checksum64     = '57ffb11fb678b5d7025b52ca16063cfc6ff7d94ba0849402e77b96b6c8f567a2'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
