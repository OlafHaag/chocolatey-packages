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

$is64bit = Get-ProcessorBits 64
if ($is64bit) {
  $destFolder = "VisualSFM_windows_cuda_64bit"
}
else {
  $destFolder = "VisualSFM_windows_cuda_32bit"
}
$zipFile64 = "CMVS-PMVS_Win64.zip"
$zipFile = "CMVS-PMVS_Win32.zip"

try {
  Get-ChocolateyUnzip -File "$installDir\$zipFile" -File64 "$installDir\$zipFile64" -Destination "$installDir\$destFolder" -PackageName $packageName
} catch {
  Write-Warning "Unable to unzip internal ressources (CMVS-PMVS) to package installation folder."
  throw
}

# Shim only the main gui executable.
$files = get-childitem $installDir -include *.exe -recurse

foreach ($file in $files) {
  if (!($file.Name.Contains("VisualSFM.exe"))) {
    #generate an ignore file
    New-Item "$file.ignore" -type file -force | Out-Null
  }
  else{
    New-Item "$file.gui" -type file -force | Out-Null
  }
}
