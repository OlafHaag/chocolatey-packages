$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.install'
  fileType       = 'msi'
  url64bit       = 'https://github.com/JabRef/jabref/releases/download/v5.6/JabRef-5.6.msi'
  checksum64     = 'ce1c0231aa8aa50bd7167658aa084903e57ea7fcfa9811ce92cc68b9e20d7a38'
  checksumType64 = 'sha256'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
