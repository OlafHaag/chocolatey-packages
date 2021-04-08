$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'dd5613d097bd1953fd9e15ba80887e18104a6665362c89689c5e52de3cd5de66'
  checksumType   = 'sha256'
  checksum64     = '960b3ce4eead673bb76cf74ae25774e70498c0f24fc31608a4ad9e066343401f'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
