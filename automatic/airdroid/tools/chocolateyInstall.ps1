$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'airdroid'
  fileType       = 'exe'
  url            = 'http://dl.airdroid.com/AirDroid_Desktop_Client_3.6.4.0.exe'
  checksum       = 'D64EA009F08132DE2774D738C4E62DA3D3C1D11E0905D0AEC3926350EA8F5A17'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
