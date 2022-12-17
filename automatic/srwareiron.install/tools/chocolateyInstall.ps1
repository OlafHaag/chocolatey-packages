$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '77068f2007862fb8dfc6f205341c901e2b6f09249c1246519ec8afea6f5ddf0a'
  checksumType   = 'sha256'
  checksum64     = '6160dfea95a2d2b1ee7cbc23a7e4649da4c5428600c4bf771f3b76b39e280b0c'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
