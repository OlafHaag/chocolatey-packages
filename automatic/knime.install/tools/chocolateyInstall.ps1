$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.install'
  fileType       = 'exe'
  url            = 'https://download.knime.org/analytics-platform/win/KNIME%203.7.1%20Installer%20%2832bit%29.exe'
  url64bit       = 'https://download.knime.org/analytics-platform/win/KNIME%203.7.1%20Installer%20%2864bit%29.exe'
  checksum       = '2883f83c39a38f27126253c435fa34513f3aad5c155d6928617579d4817f3b7f'
  checksumType   = 'sha256'
  checksum64     = 'd28efee138a87a2baf2ca6507b6b0eb7c41a36dfdf4f03bbd8afb8b145bcb143'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
