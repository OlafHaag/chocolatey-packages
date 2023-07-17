$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '01f0dfd248d30687fe2602e8eaf726e12995d49c930515b4cef98fc14e39f1ac'
  checksumType   = 'sha256'
  checksum64     = 'c8910c934c6da78987868f4f57ab61de50aa22669b05f72675d644ae3d71caec'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
