$packageName = '{{PackageName}}'
$url64 = '{{DownloadUrlx64}}'
$installDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha256'
Install-ChocolateyZipPackage -PackageName $packageName `
                             -UnzipLocation $installDir `
                             -Url64bit $url64 `
                             -Checksum64 $checksum64 `
                             -ChecksumType64 $checksumType64
