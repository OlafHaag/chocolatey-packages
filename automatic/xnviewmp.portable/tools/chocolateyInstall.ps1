$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnView_MP/XnView_MP-1.03.0-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnView_MP/XnView_MP-1.03.0-win-x64.zip'
  checksum       = 'fa573fd98f673d74c98c216865b7413ca8cf8c2b708248376edfa6446be07109'
  checksumType   = 'sha256'
  checksum64     = 'db56cec7e252a0d443afb98cdd019f8d8ecfd806a8945228f34e090a3a082312'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
