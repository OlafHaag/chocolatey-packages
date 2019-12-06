$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'f9a17d1f94c6e9350a6c5f20807034d22eefea32fbfee7c90f5177f3168f90d1'
  checksumType   = 'sha256'
  checksum64     = '43c5fcd5a520e49c7d5a9741498079a327e73a3ad062c1941880e775116ad873'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
