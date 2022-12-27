$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'airdroid'
  fileType       = 'exe'
  url            = 'https://dl.airdroid.com/AirDroid_Desktop_Client_3.7.1.2.exe'
  checksum       = '69acf8e481a7178e2f8d5f82fa987fa335dfa832dfe3f6b65886165ef097a3bc'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
