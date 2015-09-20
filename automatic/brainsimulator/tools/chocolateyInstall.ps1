$packageName = '{{PackageName}}'
$installerType = 'MSI'
$url64 = '{{DownloadUrlx64}}'
$silentArgs = '/quiet /norestart'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url64"  -validExitCodes $validExitCodes
