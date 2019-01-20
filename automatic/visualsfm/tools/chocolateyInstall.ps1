$packageName = 'visualsfm'
$url = 'http://ccwu.me/vsfm/download/VisualSFM_windows_cuda_32bit.zip'
$url64 = 'http://ccwu.me/vsfm/download/VisualSFM_windows_cuda_64bit.zip'
$installDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$checksum = '8f03bfab81d08ed8efe14b9a7aa60191adeab52c357712f3e1ec17e7f79b15f4'
$checksumType = 'sha256'
$checksum64 = '78280900f9aac1d16fe7935087b80d1592ff5e9670ef15d39655e5242ae6de3b'
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
