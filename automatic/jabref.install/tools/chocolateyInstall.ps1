$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.install'
  fileType       = 'msi'
  url64bit       = 'https://github.com/JabRef/jabref/releases/download/v5.3/JabRef-5.3.msi'
  checksum64     = '4344c5d2151187ebdaeeb0b1dc46c9e7e4ad8d623d1042a10e72187f8f1e686d'
  checksumType64 = 'sha256'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
