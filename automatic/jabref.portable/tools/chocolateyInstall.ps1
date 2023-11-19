$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref.portable'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  url64bit       = 'https://github.com/JabRef/jabref/releases/download/v5.11/JabRef-5.11-portable_windows.zip'
  checksum64     = '92e2ba8ada6dd01b8863092b43a93ef9718028d26e8be27921ae449f6cf675d8'
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
