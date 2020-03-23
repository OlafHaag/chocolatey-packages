$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.portable'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  url64bit       = 'https://github.com/JabRef/jabref/releases/download/v5.0/JabRef-5.0-portable_windows.zip'
  checksum64     = '4f410840f7821e25a09a5d1fa6408045df27bc4bcd8684fd8ab273b4933c08b7'
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
