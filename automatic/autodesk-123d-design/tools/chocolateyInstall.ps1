$packageName = '{{PackageName}}'
$installerType = 'EXE'
$url = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'
$silentArgs = '/S'
$validExitCodes = @(0,1223)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
