$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = 'a3fb889bc9e21d135fa0e9606c616ebeb1d51d7739c3546968ad66d6a8c149c3'
  checksumType   = 'sha256'
  checksum64     = 'c918b52749a1adedb02e829af60c778bc762fc9603882b203cfcc5a929ff65e7'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
