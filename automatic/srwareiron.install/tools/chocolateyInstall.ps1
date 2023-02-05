$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '1ecf87c04b14c96e558755fdb921b44cf63d5a8f9d5f85f1067cd7b594c60424'
  checksumType   = 'sha256'
  checksum64     = '9929fad40760dc09b82bc7974e7f7359b4f07374b0575e0f00c15fefb19c55d2'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
