$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.portable'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  url64bit       = 'https://builds.jabref.org/main/JabRef-5.12-portable_windows.zip'
  checksum64     = '3a01aa7f1f8eb59c2b66cb7302663db594f846a89b6367516f85c075baed2b3c'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$installDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$files = get-childitem $installDir -include *.exe -recurse

foreach ($file in $files) {
  if (!($file.Name.Contains("JabRef.exe"))) {
    #generate an ignore file
    New-Item "$file.ignore" -type file -force | Out-Null
  }
  else{
    New-Item "$file.gui" -type file -force | Out-Null
  }
}
