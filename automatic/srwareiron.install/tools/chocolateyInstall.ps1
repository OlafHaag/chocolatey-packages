$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '2d7d17c68d2741a55ca4afb0c538d1a61e9f80afab84b8faf9cf9046aee9c48b'
  checksumType   = 'sha256'
  checksum64     = '8a52c9c3cad00e0752c8f830f9f6c8468422857c1ecc81fe873cc252decfeafd'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
