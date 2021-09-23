$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0991-win.zip'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0991-win-x64.zip'
  checksum       = 'd71b149caca67ddf7f43e160c062931ff3cfee086c244d2a431a0ef96cb6b900'
  checksumType   = 'sha256'
  checksum64     = '3ff07d08833be4587778d29891486966121fa95a8c44dc8fd1c1ba4cf33cc970'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
