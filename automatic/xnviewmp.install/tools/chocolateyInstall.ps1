$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0990-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0990-win-x64.exe'
  checksum       = '80f488049760b99519ffa0a01142326786da05e6238ff0ebca2fc7bf0c1f09b8'
  checksumType   = 'sha256'
  checksum64     = '0b90b65b17d94c0206c572e05859bc8bbf499ecc19e1164576e926f68794a868'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
