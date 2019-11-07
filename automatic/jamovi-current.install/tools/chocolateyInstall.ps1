$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi-current.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-1.1.7.0-win64.exe'
  checksum64     = '374b9da5b5c263b45b4ccd6bca6f93733f61e9aa316119910e71dee808ddcf49'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
