$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.install'
  fileType       = 'exe'
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-2.3.11.0-win64.exe'
  checksum64     = '86220a4775b6c1ec04c49caf6deea32585cb59048f1144c488c1a0ca9a8782ce'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
