$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '6a0fcb9a964aca9f573c62d77d95e4a9c5c4ee934afaf48dada21a36a9231b8a'
  checksumType   = 'sha256'
  checksum64     = 'ec16bc1d48dd0e5ec2dd2c0b8b633f579092d8d28cfc593374588988e507e018'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
