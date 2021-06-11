$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '47cd667c07d3ecc3926e6582b9d5b8a50b2f93afc8e322015d6d148059c748e4'
  checksumType   = 'sha256'
  checksum64     = 'f8cae31b260c1e0d99ab2ec85da47ed274e2e1f9431182e6e40ee8fbceb6110f'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
