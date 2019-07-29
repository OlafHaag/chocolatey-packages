$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'c0d2604dd7c8f90704ac7a7a791980ade4460758f406c4cf8d827d5799f3d4c7'
  checksumType   = 'sha256'
  checksum64     = 'cd9ff0c6c86c8ab53d5ad4a455738188eef951f9b14efcd8094ea7b09cdc773e'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
