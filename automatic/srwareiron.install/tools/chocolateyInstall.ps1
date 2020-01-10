$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = '11d3545d7147c77c0d45cb08f5f7bd34cc6d5375a7c3c52299220b40f3a73cc2'
  checksumType   = 'sha256'
  checksum64     = 'e9151ff490727686a98018d40e132a7d92a74c78f129c66848f6d57235171e37'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
