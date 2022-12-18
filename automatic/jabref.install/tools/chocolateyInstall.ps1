$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.install'
  fileType       = 'msi'
  url64bit       = 'https://github.com/JabRef/jabref/releases/download/v5.8/JabRef-5.8.msi'
  checksum64     = 'cc35b8fd78ccd61bbbaf93692f42c1df9084553d10a57c2b8e3a5635a94a67b7'
  checksumType64 = 'sha256'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
