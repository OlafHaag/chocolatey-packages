$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.install'
  fileType       = 'exe'
  url            = 'https://download.knime.org/analytics-platform/win/KNIME%204.1.3%20Installer%20%2832bit%29.exe'
  url64bit       = 'https://download.knime.org/analytics-platform/win/KNIME%204.1.3%20Installer%20%2864bit%29.exe'
  checksum       = 'c271132fca7b5a6bcb7bcd21e15a9d6db78446f3e83584b17979648aeca88e46'
  checksumType   = 'sha256'
  checksum64     = '38c0d953dabb8648b15769a16c748d59bfc35b0de3e658a7896a04df03a72caa'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
