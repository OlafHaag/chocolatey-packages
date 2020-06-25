$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0963-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0963-win-x64.exe'
  checksum       = 'a3f7d83d77c850279c9c8b504435306ca84b5d7e16ce0c77e3a418acce573825'
  checksumType   = 'sha256'
  checksum64     = 'de0f10f4cf951e0c5844b44095f1e28078d1ac40f392b5c11122039ce2996eba'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
