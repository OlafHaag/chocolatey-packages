$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'fd25d709114fff00bb892f095ee2b05b06f2fee58fb497ea0b46b003f7a26a2d'
  checksumType   = 'sha256'
  checksum64     = '9009e7e11efc58cb2c601b6cf282e6b08863e5a219f7f055579ff5d6fcd74590'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
