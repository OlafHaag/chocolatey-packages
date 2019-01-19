$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.portable'
  url           = 'https://download.knime.org/analytics-platform/win/knime_3.6.2.win32.win32.x86.zip'
  url64bit       = 'https://download.knime.org/analytics-platform/win/knime_3.6.2.win32.win32.x86_64.zip'
  checksum       = '73a0b91dff13d297bfd90e9afc157f9a727b81fae9a1eefb3f69c4625bd1220c'
  checksumType   = 'sha256'
  checksum64     = '673583cea259b1c8a157ad46181abcfd348d67844c33a593e77ab2188ece059a'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
