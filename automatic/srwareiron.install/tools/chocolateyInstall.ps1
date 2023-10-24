$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'fa7a71dc32165440c90d82e403f21bdd6df8b5c34b2af19d5540e6f4bfaf99b2'
  checksumType   = 'sha256'
  checksum64     = '5d903f31f9f7be26f20bf8217190880d23c393c438f5077daac47a35d85b3efd'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
