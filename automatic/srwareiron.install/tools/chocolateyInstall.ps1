$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '71060e774ff8d62ea41de5cc56cffd164e287d054731230154a79327a3729dcb'
  checksumType   = 'sha256'
  checksum64     = 'bd21fd9f5305a8653f287df4b7a455da40c8a3fb122ea9d84334151bf5a82883'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
