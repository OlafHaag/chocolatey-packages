$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '043a02a38fda62658bdb77e07d2a8b188317665635b38454b9056a98fddd890e'
  checksumType   = 'sha256'
  checksum64     = '609c4bfa106bcb501ce41a8e018fda63951403cd1b12536c57bffcf4b56de8bf'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
