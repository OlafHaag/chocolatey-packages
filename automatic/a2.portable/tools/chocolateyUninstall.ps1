$packageArgs = @{
  packageName    = 'a2.portable'
  zipFileName    = 'a2_portable_0.0.11_alpha.zip'
}

# Find installation directory.
$toolsDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
$pkgPath = Split-Path -Path $toolsdir -Parent
$installDir = Get-Content $(Join-Path $pkgPath "$($packageArgs.zipFileName).txt") | ?{ $_ -match "a2\.exe$" } | select -First 1 | Split-Path -Parent

Uninstall-ChocolateyZipPackage @packageArgs
# Remove ShimGen files.
Uninstall-BinFile 'a2'
Uninstall-BinFile 'a2ui'

$pp = Get-PackageParameters
# Clean app data.
if (($pp.Clean -eq $true) -and $(Test-Path -Path $installDir)) {
  Remove-Item -Path $installDir -Recurse -Force
} else {
  # If a2 folder is empty, remove.
  # ToDo
}

# Remove shortcuts.
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$ShortcutName = "a2ui.lnk"
remove-item $(Join-Path $DesktopPath $ShortcutName) -Force -ErrorAction SilentlyContinue
remove-item "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\$ShortcutName" -Force -ErrorAction SilentlyContinue
