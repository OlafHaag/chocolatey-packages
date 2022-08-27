$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'airdroid'
  fileType       = 'exe'
  url            = 'https://dl.airdroid.com/AirDroid_Desktop_Client_3.7.1.1.exe'
  checksum       = '8a566e828db2deb8c34da621b89cb73f2e3c0525d203ca9aa2f6d19a9b9e925c'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
