$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-096-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-096-win-x64.exe'
  checksum       = '9261ced34c82bc1bfc1d310b5a33a2a0f1ded749c21080e23ac7e51921bc9c6c'
  checksumType   = 'sha256'
  checksum64     = 'ca999ffea707fabe4d30bc558cc87c2864cf1c018afc3cf1018fff7fba55fc74'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
