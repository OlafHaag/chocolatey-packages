$ErrorActionPreference = 'Stop'

$pp = Get-PackageParameters
# If a package parameter was not provided, use default.
if (!$pp.InstallationPath) { $pp.InstallationPath = (Join-Path $(Get-ToolsLocation) "a2") }

$packageArgs = @{
  packageName    = 'a2.portable'
  UnzipLocation  = $pp.InstallationPath
  url64bit       = 'https://github.com/ewerybody/a2/releases/download/0.0.11/a2_portable_0.0.11_alpha.zip'
  checksum64     = ''
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

# ShimGen (put executables on PATH through chocolatey's installation/bin diretory).
$a2uiPath = Join-Path $pp.InstallationPath "a2ui.exe"
if ($pp.Shim -eq $true) {
  Install-BinFile `
  -Name 'a2' `
  -Path $(Join-Path $pp.InstallationPath "a2.exe") `

  Install-BinFile `
    -Name 'a2ui' `
    -Path $a2uiPath `
    -UseStart `
}

<#
# Prevent shimming all executalbes in the package. Mark GUI application.
$files = get-childitem $pp.InstallationPath -include *.exe -recurse

foreach ($file in $files) {
  if ($file.Name.Equals("a2ui.exe")){
    New-Item "$file.gui" -type file -force | Out-Null
  }
  elseif (!($file.Name.Equals("a2.exe"))) {
    # Generate an ignore file.
    New-Item "$file.ignore" -type file -force | Out-Null
  }
}
#>

# Shortcuts.
$ShortcutName = "a2ui.lnk"
if ($pp.DesktopIcon -eq $true) {
  $DesktopPath = [Environment]::GetFolderPath("Desktop")

  Install-ChocolateyShortcut `
    -ShortcutFilePath $(Join-Path $DesktopPath $ShortcutName) `
    -TargetPath  $a2uiPath `
    -WorkingDirectory $pp.InstallationPath `
    -IconLocation $(Join-Path $pp.InstallationPath "ui\res\a2.ico") `
    -Description "Opens a2 GUI"
}

if ($pp.StartMenu -eq $true) {
  Install-ChocolateyShortcut `
    -ShortcutFilePath "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\$ShortcutName" `
    -TargetPath  $a2uiPath `
    -WorkingDirectory $pp.InstallationPath `
    -IconLocation $(Join-Path $pp.InstallationPath "ui\res\a2.ico") `
    -Description "Opens a2 GUI"
}

if ($pp.Shim -eq $true) {write-host "Call a2 or a2ui from the command line to start. You may need to close and reopen the command shell."}
