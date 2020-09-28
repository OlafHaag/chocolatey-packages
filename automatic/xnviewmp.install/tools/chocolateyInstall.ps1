$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0970-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0970-win-x64.exe'
  checksum       = '5cad7c73bdbcad1e5d0f2f9fd5e668b0cc0ecdfce34b2b0eb1cf8c986c76a7f2'
  checksumType   = 'sha256'
  checksum64     = '420cc3670bc02ac276c90b0ddce4c82ebff6680738ec91eecd56ac1df03e3c83'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
