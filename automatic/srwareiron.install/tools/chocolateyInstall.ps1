$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '72605ab05c69653e2bcad59ba1cab9bab2b536bbd157167a0c778dfced9058cb'
  checksumType   = 'sha256'
  checksum64     = 'c7baa78d58ad1d9120e14c8dd9487d6a876d4ace095c76e1269eb5d6c77e5078'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
