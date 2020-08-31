$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-1.2.27.0-win64.exe'
  checksum64     = '01550d74e17caa32f881f5fd55c107a549106fcd6c39d2b37fe722e05ed17eb1'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
