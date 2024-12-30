$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'airdroid'
  fileType       = 'exe'
  url            = 'https://dl.airdroid.com/download/AirDroid/Win/v3.8.0.0/20241226161709/AirDroid_Desktop_Client_3.8.0.0.exe'
  checksum       = '4b395ad2c2148ad32ee44506dc829055a4c2d8d898e062d57c47e3bb62f74844'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
