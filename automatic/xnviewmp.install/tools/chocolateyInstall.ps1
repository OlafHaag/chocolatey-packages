$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0971-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0971-win-x64.exe'
  checksum       = 'a6106e8103eb74e5f9ab37ac1e9c03d7e1816269bf1ec4e96e4f95bb449b7e43'
  checksumType   = 'sha256'
  checksum64     = '9da230855592cb107c573dd1c04766f4f739f1e8a8c1bbf93c24eb9bb3e4f034'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
