$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'a2.install'
  fileType       = 'exe'
  url64bit       = ''
  checksum64     = ''
  checksumType64 = 'sha256'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
