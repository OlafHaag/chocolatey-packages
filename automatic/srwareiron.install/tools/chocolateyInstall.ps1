$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'ef9f0e32b8cdd12bb2cf81c8fc7cfd443807221d961ac5d3b27e141d2ddb0dbc'
  checksumType   = 'sha256'
  checksum64     = '6970c14f522f367351680874f1243d74fdbd91b7e63cb5ad71d87814976ec862'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
