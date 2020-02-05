$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.install'
  fileType       = 'exe'
  url            = 'https://download.knime.org/analytics-platform/win/KNIME%204.1.1%20Installer%20%2832bit%29.exe'
  url64bit       = 'https://download.knime.org/analytics-platform/win/KNIME%204.1.1%20Installer%20%2864bit%29.exe'
  checksum       = '6e38ba576db9cb897c73d34b9d16f9eedfff2245a9b82ce71d654be5de01b337'
  checksumType   = 'sha256'
  checksum64     = '2858ab07fe620a49fa6e8751749881ad1b6ea7b92b6a7bfe1a80f007e783ca5f'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
