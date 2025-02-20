$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'airdroid'
  fileType       = 'exe'
  url            = 'https://dl.airdroid.com/download/AirDroid/Win/v3.8.0.3/20250220154617/AirDroid_Desktop_Client_3.8.0.3.exe'
  checksum       = '2d282c0758d605fc1d2a0993d383a596c0973f3232393726bf734687dbfa267a'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
