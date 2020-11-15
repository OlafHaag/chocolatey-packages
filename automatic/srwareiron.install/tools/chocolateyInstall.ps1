$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '3bf5e191415e0a631784eb29fd6647674b3b0f458487740e2847a62167e10300'
  checksumType   = 'sha256'
  checksum64     = '6702071b7f42a66733cc30a503a8df777cb29eb8629d785acd9f58ab7deef651'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
