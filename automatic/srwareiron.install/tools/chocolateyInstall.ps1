$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'e7f04b9f78e0c4452d9350fbf68b1d328203c91bedf60fc45b128f7edd6d9f26'
  checksumType   = 'sha256'
  checksum64     = '9486396899e40269f44111e729b4dad7b8b9211a127e7a847bb35b2bc37922a2'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
