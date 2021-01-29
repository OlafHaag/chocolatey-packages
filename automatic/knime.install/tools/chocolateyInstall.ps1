$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.install'
  fileType       = 'exe'
  url64bit       = 'https://download.knime.org/analytics-platform/win/KNIME%204.3.1%20Installer%20%2864bit%29.exe'
  checksum64     = '1860460a9f7bcd2e395ed46b6c9f19e846c199a43712003de266527df981c75d'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
