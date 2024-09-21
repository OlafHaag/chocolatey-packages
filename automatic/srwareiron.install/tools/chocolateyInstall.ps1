$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '30afa33da97d796937cfc31c134feb1e3279dd9016c0d7f68b545d2d4ca9f00d'
  checksumType   = 'sha256'
  checksum64     = 'c5b31e90e2cab45d548535f82298adfde8055fdeeb8993ed749fed49f644f799'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
