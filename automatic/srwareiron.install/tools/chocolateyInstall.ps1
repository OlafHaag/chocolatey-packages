$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '66698322e2968c925b53de2b1a1e1f04b30f5ad743287666acdc201f5978a7f2'
  checksumType   = 'sha256'
  checksum64     = 'd5027620e699ac6d9875d104bfc5c0e11844b9356ef135cf76e8e27ab76ddcc3'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
