$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'd601cec497d96a0da5f509a808a77e368f773235395b58db10687a3d0ead3c7a'
  checksumType   = 'sha256'
  checksum64     = '445ce6c7ff3bb36b19077a1d291d96b7653a7449e1b7eeca749f2b01524ebcb8'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
