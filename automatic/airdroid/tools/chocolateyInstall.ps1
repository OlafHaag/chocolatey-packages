$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'airdroid'
  fileType       = 'exe'
  url            = 'http://dl.airdroid.com/AirDroid_Desktop_Client_3.6.5.0.exe'
  checksum       = '57c7c7861a9dbd5e9cc160df975d7e81b9e3de7f2bac96be403e16bc3828eb50'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
