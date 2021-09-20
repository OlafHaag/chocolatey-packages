$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0990-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0990-win-x64.exe'
  checksum       = '80f488049760b99519ffa0a01142326786da05e6238ff0ebca2fc7bf0c1f09b8'
  checksumType   = 'sha256'
  checksum64     = '54f471fe6094e3d73ff3fc27675b1fdda0d47cdeca1641289babcce712b78080'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
