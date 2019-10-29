$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'airdroid'
  fileType       = 'exe'
  url            = 'http://dl.airdroid.com/AirDroid_Desktop_Client_3.6.6.1.exe'
  checksum       = '5a53de906a32270bd48ceaaa863fea4345904b5dcf02317d9b1b89cf0513f785'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
