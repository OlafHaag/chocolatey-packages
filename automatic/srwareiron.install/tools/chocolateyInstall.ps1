$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '380cfad73bd76fa5783c9c1cb88eacdd6395c492f809a47030e744a1c9b18cd5'
  checksumType   = 'sha256'
  checksum64     = 'bf89e3d2e808cc5393cdd1aa263dcc8d097aaf3fa561f906582af71a3c844a32'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
