$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'd8ebcbe4b396b66a8b9b513afbc69a40bc37f40d2c02c04d606e1683697610a2'
  checksumType   = 'sha256'
  checksum64     = '4f5ff459e58ca6d3b17490f690635af1ab3888fc21a17af3a39ef461dfa72c6a'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
