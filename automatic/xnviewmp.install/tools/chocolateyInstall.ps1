$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0982-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0982-win-x64.exe'
  checksum       = '200938cc4a90f8e74f901b1ab25737330dde11a78f4b53eef04bb59c86e4a7ab'
  checksumType   = 'sha256'
  checksum64     = 'f58c80028729e095c86e71873dc902339158d9102b75fb0c5835120e9d0feeab'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
