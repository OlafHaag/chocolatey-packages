$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.install'
  fileType       = 'exe'
  url            = 'https://download.knime.org/analytics-platform/win/KNIME%204.0.1%20Installer%20%2832bit%29.exe'
  url64bit       = 'https://download.knime.org/analytics-platform/win/KNIME%204.0.1%20Installer%20%2864bit%29.exe'
  checksum       = 'ec2b18d0ebb43fa632198f23bd8d3ff240acf2ad5650bbc41f7338a4fd188456'
  checksumType   = 'sha256'
  checksum64     = '49af1d1298c55aeb91a88098eef4c29478a7cbf83d511b2ba0b6cbec1d3ff4e9'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
