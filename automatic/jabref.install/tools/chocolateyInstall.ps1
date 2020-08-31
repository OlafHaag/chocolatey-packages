$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.install'
  fileType       = 'msi'
  url64bit       = 'https://builds.jabref.org/master/JabRef-5.2.msi'
  checksum64     = '9551ad995cac4fcb769fec7e2dc8631360edbb06d70491a171e1ee50630eb21f'
  checksumType64 = 'sha256'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
