$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0980-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0980-win-x64.exe'
  checksum       = 'fa3f4bdee78e9b9b6b61d24240c59163e94ce79d8966b7426e7d2c5ee87483da'
  checksumType   = 'sha256'
  checksum64     = '0c8ecbdf5ea301de987d324cbdc253cdd542b7b4a2adc4326cc8a9f8374e9897'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
