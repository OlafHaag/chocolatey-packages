$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url           = 'https://download.knime.org/analytics-platform/win/knime_3.7.0.win32.win32.x86.zip'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_3.7.0.win32.win32.x86_64.zip'
  checksum       = 'b3ae509f60ee27cb55415389e0e214c6eef8f3dcc90ff7800f71568e3929f53c'
  checksumType   = 'sha256'
  checksum64     = '96a116ab2684ba73eeb97c2e025520379dc37fcfe3e24ef8e05127e6aad7a3b1'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
