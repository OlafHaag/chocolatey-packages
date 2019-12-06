$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.install'
  fileType       = 'exe'
  url            = 'https://download.knime.org/analytics-platform/win/KNIME%204.1.0%20Installer%20%2832bit%29.exe'
  url64bit       = 'https://download.knime.org/analytics-platform/win/KNIME%204.1.0%20Installer%20%2864bit%29.exe'
  checksum       = 'f69d6058541253a3260f41ee68f5031264f7dc22a3014a5e496c0b6cc1d8e764'
  checksumType   = 'sha256'
  checksum64     = '2376dffc28416ba68916068474bb4075fed24aa0bfec24576812c5cec536b1c0'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
