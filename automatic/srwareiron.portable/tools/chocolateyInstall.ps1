$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'e8cd1d039bcd58128ed76106afd286ec144898a10d73a07d57ecf72a94c430a7'
  checksumType   = 'sha256'
  checksum64     = '871c00de4e33b39ef4bb3913b6840fe98643506a9c41e31eca43b881c3980624'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
