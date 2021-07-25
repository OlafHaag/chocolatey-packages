$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  url            = 'https://drawpile.net/files/win/drawpile-2.1.18-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.18-setup.exe'
  checksum       = 'e5c6da2a9e69eb70c2103fd3d4670e8562558f38efdeb19c93de63dfab58a265'
  checksum64     = '0de039c24185981270118b019a836706023f667cb3d3ee040bdf872c4472e882'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
