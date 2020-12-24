$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.install'
  fileType       = 'msi'
  url64bit       = 'https://github.com/JabRef/jabref/releases/download/v5.2/JabRef-5.2.msi'
  checksum64     = 'f3523a0c82473b79fc1021ed4b5d444018a5150771ffa579d3d4faaaf2aa66d0'
  checksumType64 = 'sha256'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
