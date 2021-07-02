$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'ca7b4dc151ae62b16982497f06b9aa6e89158e3547f326d26d6b2cff04145e1e'
  checksumType   = 'sha256'
  checksum64     = 'ac6f934341bc38012beafc209474eb82190c44e81d2aaf7f7be742bf76e79edc'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
