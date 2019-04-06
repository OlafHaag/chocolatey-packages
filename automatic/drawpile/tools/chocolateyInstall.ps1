$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  url            = 'https://drawpile.net/files/win/drawpile-2.1.6-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.6-setup.exe'
  checksum       = '9474b973c2d4104cf3bc2e84e7d74a7e3e4544d2b60a67cafc282731a314389e'
  checksum64     = 'f85c9a8eb20c8d665ef9094cfe7d54e23ac05ed3b10e42d38d9caa3c59a59b15'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
