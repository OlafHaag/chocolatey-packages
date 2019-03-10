$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  #url            = 'https://drawpile.net/files/win/drawpile-2.1.2-setup-w32.exe'
  url64       = 'https://drawpile.net/files/win/drawpile-2.0.11-setup.exe'
  #checksum       = ''
  checksum64     = '13c545087aaccdcece8f1cf7e20128658a1b4e97223457d1e916ae38038786e7'
  #checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
