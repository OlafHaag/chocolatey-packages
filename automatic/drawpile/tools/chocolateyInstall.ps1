$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  #url            = 'https://drawpile.net/files/win/drawpile-2.1.2-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.2-setup.exe'
  #checksum       = ''
  checksum64     = '0b9c45945b762893b3acdd2629a3ff204e27780e26f8ee81bf435b8cc04a3def'
  #checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
