$packageName = '{{PackageName}}'
$installDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha256'
Install-ChocolateyZipPackage -PackageName $packageName `
                             -UnzipLocation $installDir `
                             -Url64bit $url64 `
                             -Checksum64 $checksum64 `
                             -ChecksumType64 $checksumType64

$files = get-childitem $installDir -include *.exe -recurse

foreach ($file in $files) {
  if ($file.Name.Contains("umve.exe")) {
    New-Item "$file.gui" -type file -force | Out-Null
  }
}
