$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'a27645fc723f22d166930554c642287d99ca1dc0b3d63dc1da0884f3c6ffa518'
  checksumType   = 'sha256'
  checksum64     = 'da6adc2fe096029688f4ff765a11ac8d61587a71e00844c3ff021af060dd7df4'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
