$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'airdroid'
  fileType       = 'exe'
  url            = 'https://dl.airdroid.com/download/AirDroid/Win/v3.8.0.2/20250117191602/AirDroid_Desktop_Client_3.8.0.2.exe'
  checksum       = '37f706279ae98a44031a564607b6b7820ffeb98214fb03a808d4d9770b8d629b'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
