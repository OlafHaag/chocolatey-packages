$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.install'
  fileType       = 'exe'
  url           = 'https://download.knime.org/analytics-platform/win/KNIME%203.7.0%20Installer%20%2832bit%29.exe'
  url64bit       = 'https://download.knime.org/analytics-platform/win/KNIME%203.7.0%20Installer%20%2864bit%29.exe'
  checksum       = '88114c1fc564d4d6442798847e58e83ddf7cf98627c89f4a2762ed2d995a93d6'
  checksumType   = 'sha256'
  checksum64     = '3be6b1f18855bfdf817d120c047a96f2088f6c5187fadec61b4c25d10e4bfc94'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
