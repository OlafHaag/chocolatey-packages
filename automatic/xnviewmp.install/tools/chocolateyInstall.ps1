$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-095-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-095-win-x64.exe'
  checksum       = 'ecd394a6e7939bdc6b70d923a88a40c9ca4ebbca64452e0e7e35ec3c41824149'
  checksumType   = 'sha256'
  checksum64     = '2e623c063e661745d1036ccd7e180dd9ddec857fdaa43125042a28b73017ef09'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
