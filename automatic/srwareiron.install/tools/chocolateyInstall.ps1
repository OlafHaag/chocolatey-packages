$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '97bcedeb0b7f639cbad7d940dbb004fd988d14cd74f506f8675d2d4b26be5b35'
  checksumType   = 'sha256'
  checksum64     = 'f76cd9bb67a2dce16179d4fb0df31ad125733ffac52b6027d8852e42c7a8caff'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
