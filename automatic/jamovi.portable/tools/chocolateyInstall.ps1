$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.portable'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-1.8.2.0-win64.zip'
  checksum64     = 'e8b1c55e2d77cc87b07cd4c6cc834a002562e55b10dc8b45a52152cdc4c25e8a'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$installDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$files = get-childitem $installDir -include *.exe -recurse

foreach ($file in $files) {
  if (!($file.Name.Contains("jamovi.exe"))) {
    #generate an ignore file
    New-Item "$file.ignore" -type file -force | Out-Null
  }
  else{
    New-Item "$file.gui" -type file -force | Out-Null
  }
}
