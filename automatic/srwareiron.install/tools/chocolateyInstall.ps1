$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'c71f37d161eebc358c40a9b4161276a3bb7e49ac5b1e8c149330c53563208d6e'
  checksumType   = 'sha256'
  checksum64     = '65cce62e92f20fbb231e523e6aaa665112eca737be17299974418dafc03e45a2'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
