$packageName = 'brainsimulator'
$installerType = 'msi'
$silentArgs = '/quiet /norestart'
$url64 = 'http://mirror.goodai.com/download/brainsimulator/BrainSimulatorInstaller-v0.6.0-03.msi'
$checksum64 = '14632c8df4fb54ee797f4ba3e51581dda721df1c26d38cbd4fbad8223708ca28'
$checksumType64 = 'sha256'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName $packageName `
                          -FileType $installerType `
                          -SilentArgs $silentArgs `
                          -Url64bit $url64 `
                          -ValidExitCodes $validExitCodes `
                          -Checksum64 $checksum64 `
                          -ChecksumType64 $checksumType64
