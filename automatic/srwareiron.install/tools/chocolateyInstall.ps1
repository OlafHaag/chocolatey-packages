$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '6fa3b04eaa4f5b6033bcc2bd5743c90d044d28b007c6879ff622a7a106f687c5'
  checksumType   = 'sha256'
  checksum64     = '458e1f04b0a8ff263f952e864c1d9273d4a6cde71059ed3dedcaca399b87173a'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
