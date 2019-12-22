$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0942-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0942-win-x64.exe'
  checksum       = '16ad4904bf2b6f2b8ab6b3b74c7164dcf791c1439b7ecd2640d0942b81e32897'
  checksumType   = 'sha256'
  checksum64     = '20530e2e72dd2a9ae78ad70827473d37d820b90d40a2115cb36646b3322117ff'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
