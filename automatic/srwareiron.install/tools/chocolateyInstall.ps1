$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'eec2f0f8fe046eaa45b3e8b56b86b80c6fa7aa3c09b375f57ff6aecc636b6193'
  checksumType   = 'sha256'
  checksum64     = '13e8d20edb643a3ed8cd18a4d2295bbe8804afb85857aeb9c39c80ed6ca8d912'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
