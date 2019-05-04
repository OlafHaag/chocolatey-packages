$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  url            = 'https://drawpile.net/files/win/drawpile-2.1.8-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.8-setup.exe'
  checksum       = '079d4a2cf82add0c6e62460538f31c1bcde0e920f16694da2456cb12df6e2fd8'
  checksum64     = '54ecb920ce9a405b1f60fa88c38fa0fa03e5782934ddf9e5ddc95243daf962cb'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
