$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  url            = 'https://drawpile.net/files/win/drawpile-2.1.10-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.10-setup.exe'
  checksum       = '47235f55987696113e6ed365ca85dfa441749e2f47817e4f9bb7b4c007870a1f'
  checksum64     = 'd0287a5e4a32e96bdc68a6d7207e100c143a2e280d0d0bd9f258aef5cd9178ed'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
