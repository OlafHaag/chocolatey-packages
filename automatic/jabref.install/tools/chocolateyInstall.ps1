$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.install'
  fileType       = 'msi'
  url64bit       = 'https://builds.jabref.org/main/JabRef-5.13.msi'
  checksum64     = 'f3a09561c3b55caf705cc444c013a44b1121ee18cfb958a0eefd17607560045e'
  checksumType64 = 'sha256'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
