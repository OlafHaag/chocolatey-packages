$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'

try {
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  
  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir" "$url64"

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
