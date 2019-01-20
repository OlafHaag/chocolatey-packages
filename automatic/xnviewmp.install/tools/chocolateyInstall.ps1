$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/XnViewMP-win.exe'
  url64bit       = 'https://download.xnview.com/XnViewMP-win-x64.exe'
  checksum       = '439b4d57f0460c5d176878d331482bab709c96dec86363bc000def3d08ce8deb'
  checksumType   = 'sha256'
  checksum64     = '4cfb3b38dbb7678c16b02461e64a9485a6d5c87022e05d2344ae8f9dd5a513dc'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
