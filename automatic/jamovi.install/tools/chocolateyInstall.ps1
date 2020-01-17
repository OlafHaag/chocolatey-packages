$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-1.2.2.0-win64.exe'
  checksum64     = '1fd3fef5946e2f2506f9b24e4b9f1cea8dbc62c75fa05059977c93698fb21cf2'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
