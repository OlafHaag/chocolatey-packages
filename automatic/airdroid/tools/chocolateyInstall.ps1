$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'airdroid'
  fileType       = 'exe'
  url            = 'http://dl.airdroid.com/AirDroid_Desktop_Client_3.6.6.0.exe'
  checksum       = 'c27226c17ad3347d714402714d38affb29fb6efbc06a906e2ac49a1be7238de8'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
