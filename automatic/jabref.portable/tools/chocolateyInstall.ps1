$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.portable'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  url64bit       = 'https://github.com/JabRef/jabref/releases/download/v6.0-alpha/JabRef-6.0-portable_windows.zip'
  checksum64     = '10aa47789750b3f6fb789f45b914907c4b909fc2767af945de79bb5764546794'
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
