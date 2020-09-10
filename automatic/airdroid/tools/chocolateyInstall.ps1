$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'airdroid'
  fileType       = 'exe'
  url            = 'http://dl.airdroid.com/AirDroid_Desktop_Client_3.6.8.0.exe'
  checksum       = 'd90a3170a7e55136a4670d43ffbd1e954344ae6fdf5386977f7a05f75665caca'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
