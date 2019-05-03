$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'b093d2d2aed7cbdd1cd63106205a37617f3582ba20ff36d5d00d04693c8fa755'
  checksumType   = 'sha256'
  checksum64     = '124e4e74e41623378dcd23b2ec2a94f8028d7ba1d9f4fe56c19b6bc0661094d6'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
