$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.portable'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  url64bit       = 'https://github.com/JabRef/jabref/releases/download/v5.6/JabRef-5.6-portable_windows.zip'
  checksum64     = 'efc46a329378d4a249332ea697c63a9ef0c189115e2b1e1c9d5e04993bfaf017'
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
