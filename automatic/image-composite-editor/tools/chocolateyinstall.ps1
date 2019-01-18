
$ErrorActionPreference = 'Stop';

$packageName= 'image-composite-editor'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/A/7/8/A7804C73-ECDB-4459-BB3E-A7F13C4C5382/ICE-2.0.3-for-32-bit-Windows.msi'
$url64      = 'https://download.microsoft.com/download/7/3/9/73918E0B-C146-40FA-B18C-EADF03FEC4BA/ICE-2.0.3-for-64-bit-Windows.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'image-composite-editor*'

  checksum      = '1e88d9ef59b7d0d20a1ac8e49b48b5ed038764abe1686cdc12b3aae800bdf964'
  checksumType  = 'sha256'
  checksum64    = '3a39a8fff473500186f56e6f79985bae87a5b6d5f10ed3f8a3f40899d7fddb43'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
