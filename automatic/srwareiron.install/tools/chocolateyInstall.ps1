$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '7c39c5ed151c68d73903c5ff185d74d4ddc1cd3957d409ad61decbd9895e08a8'
  checksumType   = 'sha256'
  checksum64     = 'bfaf393872e46c108764a3876963beb204b9b118d1a02bd23d49c8ad06232699'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
