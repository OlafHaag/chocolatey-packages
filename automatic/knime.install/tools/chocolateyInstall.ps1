$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.install'
  fileType       = 'exe'
  url64bit       = 'https://download.knime.org/analytics-platform/win/KNIME%204.2.0%20Installer%20%2864bit%29.exe'
  checksum64     = '978430588bc241e0420e09cb7d04843a1e7d5db7e046becfd9cba31e11368439'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
