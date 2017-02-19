$packageName = '{{PackageName}}'
$installerType = 'exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

$unfolder = "XnViewMP"
$unfile = "unins000.exe"


try {
  $64Bit = 0
  if (Test-Path "${Env:ProgramFiles(x86)}\$unfile") {
    $unpath = "${Env:ProgramFiles(x86)}\$unfolder\$unfile"
  } else {
    $unpath = "$Env:ProgramFiles\$unfolder\$unfile"
  $64Bit = 1
  }

  Uninstall-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$unpath" -validExitCodes $validExitCodes

  if ($64Bit -eq 0) {
    Remove-Item "${Env:ProgramFiles(x86)}\$unfolder" -recurse -Force
  } else {
    Remove-Item "${Env:ProgramFiles}\$unfolder" -recurse -Force
  }
}
catch {
  Write-Warning "Unable to uninstall package."
}
