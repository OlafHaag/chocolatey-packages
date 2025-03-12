$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'dd0688a25283cb3dc6b763618f85becccbc163f687aae523c154567cbc05ee57'
  checksumType   = 'sha256'
  checksum64     = '057a054d93f096cb097c1fb0a8beaa03e6bc15499ec4e8a67b569842e5b1db83'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
