$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref'
  fileType       = 'exe'
  url            = 'https://github.com/JabRef/jabref/releases/download/v5.0-alpha/JabRef_windows-x32_5_0-alpha.exe'
  url64bit       = 'https://github.com/JabRef/jabref/releases/download/v5.0-alpha/JabRef_windows-x64_5_0-alpha.exe'
  checksum       = '8be70bf0f46b5f433ef959d80a65e24d03c94d4485e3ab4cda400a67cfe1c9c1'
  checksum64     = 'dde2a8b76e8602b758c7dd1205a2d430187340fa61ee0cb3a952e82127dda565'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '-q'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
