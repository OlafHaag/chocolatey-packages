$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.install'
  fileType       = 'msi'
  url64bit       = 'https://github.com/JabRef/jabref/releases/download/v5.7/JabRef-5.7.msi'
  checksum64     = '997c28b233001ad2e5a7a2b86d434b4c10027e71f9daa9c9b9b8e1be97e27a1a'
  checksumType64 = 'sha256'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
