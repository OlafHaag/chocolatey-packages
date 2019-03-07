$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/XnViewMP-win.exe'
  url64bit       = 'https://download.xnview.com/XnViewMP-win-x64.exe'
  checksum       = 'fd35790bfa4b9eb254904763098c5d6cabbaa37ce987725cf2e6278826b2c965'
  checksumType   = 'sha256'
  checksum64     = '0970d8f0cdd66b49e925e278dffe7dba4d48d6fa62fa0bd1d929088ff9b030dc'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
