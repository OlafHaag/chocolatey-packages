$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/XnViewMP-win.exe'
  url64bit       = 'https://download.xnview.com/XnViewMP-win-x64.exe'
  checksum       = 'f8076341a5647d6022de7f82cfce7fc432c2425ec2ac366cb9d6982671f6dad3'
  checksumType   = 'sha256'
  checksum64     = 'a9646941fe4173cd5deac2ca06704dcded8887a4cf5352b34389da9ac279907a'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
