$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-1.0.5.0-win64.exe'
  checksum64     = 'e41b3bc4088c14f56ceeb47709a0b34e2c7a617ed92c167fd5cafb0db972d909'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
