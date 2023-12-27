$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '7c28a3b4f6fb09549f8687923fb48f239cc97366b8acf3e365e32809e7757f0c'
  checksumType   = 'sha256'
  checksum64     = '96735ceb758c548d60599c607caf14c41933f148f90872a24353031f09e0735a'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
