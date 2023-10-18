$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'airdroid'
  fileType       = 'exe'
  url            = 'https://dl.airdroid.com/AirDroid_Desktop_Client_3.7.2.1.exe'
  checksum       = 'f786f0fcc11f6f690503c379b0c1423a9f6443ebf5229c5038754c17bfd51216'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
