$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'f776f44e6d290e3a34e6f11f66bff03421e48695a78ea716eb9ad4e2e4ba6a57'
  checksumType   = 'sha256'
  checksum64     = 'fb51b3c22af15039152d099910c3a16efa62bcee17b3101343ec3e5e1372f5a8'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
