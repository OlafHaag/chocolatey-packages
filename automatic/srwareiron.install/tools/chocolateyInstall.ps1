$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'c187011b68b59968e949d1de3791e68b6da48b30e1bd7828e38a7757fc22a5aa'
  checksumType   = 'sha256'
  checksum64     = '6525eceb8f91e8ab5e54b8608eef9ebc67f127772add4d8d0ca490bf1d3ee39d'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
