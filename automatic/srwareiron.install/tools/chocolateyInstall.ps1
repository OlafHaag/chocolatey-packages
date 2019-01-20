$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'http://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'http://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'c3f4f64c70cb3bbf6be9c6a74f7ff1084bcbe73ec6098c9a7c6ffc70a2e30425'
  checksumType   = 'sha256'
  checksum64     = '404119c0970981fc41328eda024bc8db655269ff87345dc34235c92681f0e2c1'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
