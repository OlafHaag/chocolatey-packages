$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0996-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0996-win-x64.exe'
  checksum       = '916b455e2b15b0d4f6f7a11a86490290b2f1fdb17550ed9e9fc89904700d29ad'
  checksumType   = 'sha256'
  checksum64     = '8fef3a9a330941f41319145673f43f5a931c1f9c681397e77001bc002137d11f'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
