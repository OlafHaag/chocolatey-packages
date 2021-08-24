$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'e7ed52f449f72e057c6fc0061b6bf9779639d595faa478f4c2734dca8b3f690c'
  checksumType   = 'sha256'
  checksum64     = 'ee10a785407f3327ae54cf301e04ad19aed2a554c0b4691463d25ca685b566e8'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
