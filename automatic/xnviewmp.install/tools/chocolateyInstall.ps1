$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/XnViewMP-win.exe'
  url64bit       = 'https://download.xnview.com/XnViewMP-win-x64.exe'
  checksum       = '30be7f5bebce2448e46024d953ad8697891dad34ded74f9ee262b48449192730'
  checksumType   = 'sha256'
  checksum64     = '574ed1f4b66ae52c45c6a144c30205813e548145437a4cf5749e79f0eebaec7f'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
