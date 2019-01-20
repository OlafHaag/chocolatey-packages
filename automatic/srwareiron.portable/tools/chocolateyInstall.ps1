$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'srwareiron.portable'
  url            = 'https://www.srware.net/downloads/IronPortable.zip'
  url64bit       = 'https://www.srware.net/downloads/IronPortable64.zip'
  checksum       = '83262083aa1c80f3d79a8da93af09f6c98b92ac7c850266dcf4f31261a57afca'
  checksumType   = 'sha256'
  checksum64     = 'cc5e47c09c052b4345d70b6d8aff488ecc7d828cdedd0f960be9d6e9047edc9f'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
