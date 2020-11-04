$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.install'
  fileType       = 'exe'
  url64bit       = 'https://download.knime.org/analytics-platform/win/KNIME%204.2.3%20Installer%20%2864bit%29.exe'
  checksum64     = '3f07a6c1dccc1d5dfe4c63bfa13e401799224266a487b233beab74d218371914'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
