$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-1.2.8.0-win64.exe'
  checksum64     = 'ca47c969d212ade5559053cd041d8e94f46610e28ffa7f4a8e13c01a8c333d82'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
