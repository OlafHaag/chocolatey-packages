$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0965-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0965-win-x64.exe'
  checksum       = 'fb954428d07afc56cc9e1ef0a94020a5ddf94c54fabb411bddd551b82e8be8d8'
  checksumType   = 'sha256'
  checksum64     = '5482f87f5fce5847ffd99683196e6e4023d3711f118eaf50820926de0ea70299'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
