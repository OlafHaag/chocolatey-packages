$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'airdroid'
  fileType       = 'exe'
  url            = 'https://dl.airdroid.com/AirDroid_Desktop_Client_3.7.1.3.exe'
  checksum       = '247f9095c2a094202f5bd43e6ddfe3d29449584db93b92cedf52eea6b9fbfea5'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
