$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.install'
  fileType       = 'exe'
  url            = 'https://www.srware.net/downloads/srware_iron.exe'
  url64bit       = 'https://www.srware.net/downloads/srware_iron64.exe'
  checksum       = 'dd9bc311500cadb93c915c0ab9ab3c634658447284393927ccfda6542ad33b3c'
  checksumType   = 'sha256'
  checksum64     = '695cae1170e17c8206ef84bbae47fb73159e11ccd4398bfb0f4291247c329297'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /Components=Iron'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
