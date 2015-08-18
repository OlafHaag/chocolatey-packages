$packageName = 'xnviewmp.portable'
$url = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage "$packageName" "$url" "$installDir" "$url64"
