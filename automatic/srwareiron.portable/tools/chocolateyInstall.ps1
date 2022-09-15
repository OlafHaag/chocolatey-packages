$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'f0c7c4689c4ff9c79475461b64de6761a0905c88185c037760ea725fcd0acc4c'
  checksumType   = 'sha256'
  checksum64     = '0408876a8912fa618d05eacb03a4745928ce52487e2e6b3fda8cc5a6f9453864'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
