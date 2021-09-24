$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'airdroid'
  fileType       = 'exe'
  url            = 'https://dl.airdroid.com/AirDroid_Desktop_Client_3.7.0.0.exe'
  checksum       = 'e298734f031b27b1601dace3bbb56b50a65f6538ae686aa39680f3fcca67bf71'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
