$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.install'
  fileType       = 'msi'
  url64bit       = 'https://github.com/JabRef/jabref/releases/download/v5.11/JabRef-5.11.msi'
  checksum64     = 'd1a179fe8b7137e1ff9ea5ad226fb5cd1da620185c4d7df25782f9fe9ca14305'
  checksumType64 = 'sha256'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
