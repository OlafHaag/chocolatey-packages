$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'ce061b94fb86e377e9bc3568eb079e1a12b7e55ce3c48a9aedc98efd96b35da2'
  checksumType   = 'sha256'
  checksum64     = '8f4cef4142a7907dcfd85b65242a2638915f8e5b21fba3400909c17b48bcaae0'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
