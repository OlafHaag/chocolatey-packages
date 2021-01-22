$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0981-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0981-win-x64.exe'
  checksum       = 'b5e5e34614ace8d6c5357ac95a20e777a075d906509f67f6c9e2575b87bb00e4'
  checksumType   = 'sha256'
  checksum64     = '2d19baf6acf0963437655be3075a6bde7b628662873e481265e36951fae54270'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
