$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.install'
  fileType       = 'exe'
  url            = 'https://download.knime.org/analytics-platform/win/KNIME%204.0.0%20Installer%20%2832bit%29.exe'
  url64bit       = 'https://download.knime.org/analytics-platform/win/KNIME%204.0.0%20Installer%20%2864bit%29.exe'
  checksum       = '6f6c4dace558edabf6bc94c0a3476daec3e6261868f6a5bd2d9f1749a53f44f1'
  checksumType   = 'sha256'
  checksum64     = '4f60246f91b3387d0f40d07ad0f864b9e2785a9672353aae2c38ac13b0019b28'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
