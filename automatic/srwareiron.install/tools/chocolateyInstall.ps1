$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'adab7079677670ae79b6f88571010d7a724e7edf6f67f42947b89bf4a9516534'
  checksumType   = 'sha256'
  checksum64     = '96d74c3fe9010cd3d68985a0e742f37727b1ee450c252efcd8ea708f63fbd302'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
