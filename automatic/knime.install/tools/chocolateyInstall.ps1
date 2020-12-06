$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.install'
  fileType       = 'exe'
  url64bit       = 'https://download.knime.org/analytics-platform/win/KNIME%204.3.0%20Installer%20%2864bit%29.exe'
  checksum64     = '8b6f0a8a16e0a6f52d4773011b455528122418b1f0f6af51eda06dfd4fd714ee'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
