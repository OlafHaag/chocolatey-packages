$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'mve'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  url64bit       = 'http://www.gcc.tu-darmstadt.de/media/gcc/code/mve-20160517-win64.zip'
  checksum64     = '7a4ed90add561803e0abb86cccd943e0d247ed9710c0c5da430e66ed0536e14f'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$installDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$files = get-childitem $installDir -include *.exe -recurse

foreach ($file in $files) {
  if ($file.Name.Contains("umve.exe")) {
    New-Item "$file.gui" -type file -force | Out-Null
    #$target = Join-Path $installDir "$($packageName).exe"
    $DesktopPath = [Environment]::GetFolderPath("Desktop")
    $WorkingDir = $(Split-Path $file)
    Install-ChocolateyShortcut -shortcutFilePath "$DesktopPath\umve.lnk" -targetPath "$file" -WorkingDirectory "$WorkingDir"
  }
}
