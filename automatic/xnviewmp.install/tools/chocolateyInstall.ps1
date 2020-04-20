$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0961-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0961-win-x64.exe'
  checksum       = '366b7d8bd940fe40d0bb288dbdd59ccc18d2d7a42978f02c0c37c5a1ebb36b23'
  checksumType   = 'sha256'
  checksum64     = '1748432af79c6f991a185e409554a51b257b9a47cd2b4b003cdad719531aff1c'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
