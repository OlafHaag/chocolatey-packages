$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0984-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0984-win-x64.exe'
  checksum       = '693a31bdb5fbd70a4164027ec0f108fad429420667f5cf4719d4ba79c39eb380'
  checksumType   = 'sha256'
  checksum64     = '7dc7ac56b7b1ef1bf1190c958f3d822a617fe77211cc32555fa377f0b165ed33'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
