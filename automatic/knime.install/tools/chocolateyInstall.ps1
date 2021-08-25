$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.install'
  fileType       = 'exe'
  url64bit       = 'https://download.knime.org/analytics-platform/win/KNIME%204.4.1%20Installer%20%2864bit%29.exe'
  checksum64     = 'a9b1399dc2aad5728a2b18ed9ec4c681b2cb90ceac0d714cf98882002ccb9a17'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
