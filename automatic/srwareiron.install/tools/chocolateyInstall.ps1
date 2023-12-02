$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'aaa87062b7261f0906b6d63d5838d2b608817b151896e17137a09dfbacbd718e'
  checksumType   = 'sha256'
  checksum64     = '4e2a11de3b56073e80a2ac528f8739198abdc1bd735e566eaa2375ffca8ceba9'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
