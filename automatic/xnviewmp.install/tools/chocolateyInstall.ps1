$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0943-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0943-win-x64.exe'
  checksum       = '23ee2e24bc79a8b63b44fc077095b1b8b1c6fb62c17cc97243b7309ff83483df'
  checksumType   = 'sha256'
  checksum64     = '98088d9815f07372091153dd8f0700c286574d9022f71bee1bca37294db07277'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
