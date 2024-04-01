$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.install'
  fileType       = 'msi'
  url64bit       = 'https://github.com/JabRef/jabref/releases/download/v5.13/JabRef-5.13.msi'
  checksum64     = 'b07d8288f703458c971c9e9c70f8a5d3cddb463911eb8307d79b710ffa165e90'
  checksumType64 = 'sha256'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
