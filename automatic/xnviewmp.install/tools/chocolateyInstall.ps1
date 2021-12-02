$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0994-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0994-win-x64.exe'
  checksum       = '950eda1ed475e3e122d947f5fbb9eb2014d4c2a9c8e1932920bb97ed59e58ff0'
  checksumType   = 'sha256'
  checksum64     = '6b9f11f1b205b21e3fc2e5506634868319f4414b4cd6ee73a4d89aaac4b5a502'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
