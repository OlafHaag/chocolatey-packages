$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '8487a2f9b3162c26cea60c0cf69278e8ba1fe9f94a7e22d8f3ac907336c1c32b'
  checksumType   = 'sha256'
  checksum64     = '3d9fb1f2a11d201216325157bf2a1828bdfb595906c0e7f94b156eb95cb922bd'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
