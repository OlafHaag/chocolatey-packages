$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '9dfef86a13bbadc9c06ee8ff20b55e44f18d73d70af84a1a0415b12b766b19aa'
  checksumType   = 'sha256'
  checksum64     = '6c34b922e477923c5a481b4364cf2db8c86b9e333c5d7a7c8270000a2bf8b540'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
