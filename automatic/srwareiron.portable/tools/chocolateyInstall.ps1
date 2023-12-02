$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'cd08c3e7a2f47bf5cae6ea862da908e3fe68d6061bdbdbc429395205dcf107f3'
  checksumType   = 'sha256'
  checksum64     = 'e3de4cfdbce88672d9f154635a10e6859c3606195911f1ac9dab5e6fc7971d7c'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
