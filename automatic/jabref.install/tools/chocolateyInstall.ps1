$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.install'
  fileType       = 'msi'
  url64bit       = 'https://builds.jabref.org/main/JabRef-5.16.msi'
  checksum64     = '3b5793d3bb2dd0284703f0201341a82c9fcb4932dbe0b5ed65c9714de18a2eb0'
  checksumType64 = 'sha256'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
