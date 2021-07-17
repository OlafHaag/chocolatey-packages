$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.install'
  fileType       = 'msi'
  url64bit       = 'https://builds.jabref.org/main/JabRef-5.4.msi'
  checksum64     = '6a4c91f706bbd11fc80bacef32960cd5d756b0918849fdba574fe3a7ad53217a'
  checksumType64 = 'sha256'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
