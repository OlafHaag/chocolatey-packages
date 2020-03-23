$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref'
  fileType       = 'msi'
  url64bit       = 'https://github.com/JabRef/jabref/releases/download/v5.0-alpha/JabRef_windows-x64_5_0-alpha.exe'
  checksum64     = 'dde2a8b76e8602b758c7dd1205a2d430187340fa61ee0cb3a952e82127dda565'
  checksumType64 = 'sha256'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
