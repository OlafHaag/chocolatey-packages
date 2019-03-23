$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'drawpile'
  fileType       = 'exe'
  url            = 'https://drawpile.net/files/win/drawpile-2.1.4-setup-w32.exe'
  url64bit       = 'https://drawpile.net/files/win/drawpile-2.1.4-setup.exe'
  checksum       = 'a13d180f64be6ebc0f125de8140fe95b44acb903790d60bf5e7c08cb4f74070a'
  checksum64     = 'e94338408cf9f51e4cc2e0662a15560632b66357ded98d17d2bf5318c4cb74db'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/SILENT'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
