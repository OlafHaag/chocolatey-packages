$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0964-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0964-win-x64.exe'
  checksum       = '1707c386b9c027e359bed73e89d3a6417d9bad4121104034bcb81006cbb6046c'
  checksumType   = 'sha256'
  checksum64     = '24b9dc35c5c474cff0f65c90909e27df269d1a4da8e6ff804ac0e44dad651cc3'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
