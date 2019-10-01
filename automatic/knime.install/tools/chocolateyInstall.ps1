$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.install'
  fileType       = 'exe'
  url            = 'https://download.knime.org/analytics-platform/win/KNIME%204.0.2%20Installer%20%2832bit%29.exe'
  url64bit       = 'https://download.knime.org/analytics-platform/win/KNIME%204.0.2%20Installer%20%2864bit%29.exe'
  checksum       = '4d70492420edcd81fc5921b5efe853d1f2a8ae89526fa7d390e01fba680296f0'
  checksumType   = 'sha256'
  checksum64     = 'aab4ddef591cf8b7327ff03c9c1ea9b2da134161f476840025393dd07a5ec21f'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
