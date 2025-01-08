$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'airdroid'
  fileType       = 'exe'
  url            = 'https://dl.airdroid.com/download/AirDroid/Win/v3.8.0.1/20250107183848/AirDroid_Desktop_Client_3.8.0.1.exe'
  checksum       = 'd8f25f70c0ab2498e2b2fab5f8f49a399730cd274d9d6951fce72066037b7019'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
