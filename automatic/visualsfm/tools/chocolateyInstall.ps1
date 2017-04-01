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
  $zipFolder = "Win64"
  $destFolder = "VisualSFM_windows_cuda_64bit"
}
else {
  $zipFolder = "Win32"
  $destFolder = "VisualSFM_windows_cuda_32bit"
}

try {
  #Get-ChocolateyUnzip -FileFullPath "$installDir\CMVS-PMVS.zip" -Destination "$installDir\$destFolder\" -SpecificFolder $zipFolder -PackageName $packageName
  # option -SpecificFolder in Get-ChocolateyUnzip is broken. There's no -SpecificFiles option either.
  cmd /c 7z e -aoa -bd -bb1 -o"$installDir\$destFolder\" -y "$installDir\CMVS-PMVS.zip" "$zipFolder\*"
  # Add extracted files to log for automatic uninstall script to work properly.
  $pkgLibFolder = (get-item $installDir ).parent.FullName
  $instLogFile = "$pkgLibFolder\$destFolder.zip.txt"
  Add-Content $instLogFile "$installDir\$destFolder\cmvs.exe"
  Add-Content $instLogFile "$installDir\$destFolder\pmvs2.exe"
  Add-Content $instLogFile "$installDir\$destFolder\genoptions.exe"
} catch {
  Write-Warning "Unable to unzip internal ressources (CMVS-PMVS) to package folder."
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
