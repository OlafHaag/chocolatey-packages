$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'fcdec0012c2f8d8a69d026f682ee1251c55bc2f3e79249af87fe281c03a2450d'
  checksumType   = 'sha256'
  checksum64     = '610c629b65ab457b8540f756684326812f425f4ca34a746eca27877e53d25ced'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
