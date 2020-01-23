$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-095-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-095-win-x64.exe'
  checksum       = '526ab763fe82b737e775b33d54f28b6bf887a48e4d86f4d9403d97d51a497266'
  checksumType   = 'sha256'
  checksum64     = 'd3a0bb0681b32701d71340d5c9949f63ab29a97d26f43f1ba32e51f09c5905e8'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
