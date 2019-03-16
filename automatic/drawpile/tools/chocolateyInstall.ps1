$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  url            = 'https://drawpile.net/files/win/drawpile-2.1.3-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.3-setup.exe'
  checksum       = '00b0f7217cf829203f353e221c0d28810963dfca2858dda2a9f320b2c73d261f'
  checksum64     = 'ff4cd8eb8ebba00b6d14b0f675afe242717bf7defa6f991bc8e503dc3c48dfe0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
