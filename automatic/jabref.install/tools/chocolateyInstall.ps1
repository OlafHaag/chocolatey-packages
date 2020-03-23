$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.install'
  fileType       = 'zip'
  url64bit       = 'https://github.com/JabRef/jabref/releases/download/v5.0/JabRef-5.0.msi'
  checksum64     = 'c5f27955b01f57baf8ea5386c6ba81f057f21a659cdf269f23340e3313f0b8d9'
  checksumType64 = 'sha256'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
