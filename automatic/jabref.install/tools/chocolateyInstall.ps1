$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.install'
  fileType       = 'msi'
  url64bit       = 'https://builds.jabref.org/main/JabRef-5.12.msi'
  checksum64     = '8d060f36ab7d0834bbd613cfc293dd973d3636f9dd250ae4260b8e78affd08fd'
  checksumType64 = 'sha256'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
