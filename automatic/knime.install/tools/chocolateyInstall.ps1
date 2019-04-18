$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.install'
  fileType       = 'exe'
  url            = 'https://download.knime.org/analytics-platform/win/KNIME%203.7.2%20Installer%20%2832bit%29.exe'
  url64bit       = 'https://download.knime.org/analytics-platform/win/KNIME%203.7.2%20Installer%20%2864bit%29.exe'
  checksum       = '6e0fba8b948150348925863c82e405e0a08136fa12cf8f1b894a764f131da428'
  checksumType   = 'sha256'
  checksum64     = '207c3e7843663a0c74b63750f96d9e88598c34b2516b352d14a2d4b7c691bf2a'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
