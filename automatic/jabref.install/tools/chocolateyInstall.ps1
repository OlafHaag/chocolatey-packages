$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.install'
  fileType       = 'msi'
  url64bit       = 'https://github.com/JabRef/jabref/releases/download/v5.4/JabRef-5.4.msi'
  checksum64     = 'a8163f65517b71d1d3ac88dc9c4a477bb52c2b0f47ddea4f6110f130ff0f769c'
  checksumType64 = 'sha256'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
