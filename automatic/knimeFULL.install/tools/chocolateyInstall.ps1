$packageName = '{{PackageName}}'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha256'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes "$validExitCodes" `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"
