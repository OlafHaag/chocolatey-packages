$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.install'
  fileType       = 'exe'
  url            = 'https://download.knime.org/analytics-platform/win/KNIME%204.1.2%20Installer%20%2832bit%29.exe'
  url64bit       = 'https://download.knime.org/analytics-platform/win/KNIME%204.1.2%20Installer%20%2864bit%29.exe'
  checksum       = '2b448eb9d3e8d87086626e6fb31c47dffa1e3f816a5f2121ef0209ae8e8c4581'
  checksumType   = 'sha256'
  checksum64     = '35590bbc69e15f977cb074efff27ee9fc7e6e28bfceb446779887f97fa0bcd87'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
