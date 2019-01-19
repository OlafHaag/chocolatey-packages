$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'knime.install'
  fileType       = 'exe'
  $url           = 'https://download.knime.org/analytics-platform/win/KNIME 3.6.2 Installer (32bit).exe'
  url64bit       = 'https://download.knime.org/analytics-platform/win/KNIME 3.6.2 Installer (64bit).exe'
  checksum       = 'b106b86567cb8db234d01d83a778a7dd5f034330661542de5fd225977c88aa48'
  checksumType   = 'sha256'
  checksum64     = 'a9a1337737b1dbf838800be7ef94b4a980f09de4fb4625ae63b1b322843635a4'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
