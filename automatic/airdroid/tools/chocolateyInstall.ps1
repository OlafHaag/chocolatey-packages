$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'airdroid'
  fileType       = 'exe'
  url            = 'https://dl.airdroid.com/download/AirDroid/Win/v3.8.0.4/20250311152551/AirDroid_Desktop_Client_3.8.0.4.exe'
  checksum       = 'ce7f2dfa2ed42b0013c9342d52b5b870fab1a2ecda4d114c12074887806de60e'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
