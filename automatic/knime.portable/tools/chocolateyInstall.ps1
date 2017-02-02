$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'
$installDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha256'
Install-ChocolateyZipPackage -PackageName $packageName `
                             -Url $url `
                             -UnzipLocation $installDir `
                             -Url64bit $url64 `
                             -Checksum $checksum `
                             -ChecksumType $checksumType `
                             -Checksum64 $checksum64 `
                             -ChecksumType64 $checksumType64
