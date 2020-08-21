$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.portable'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-1.2.26.0-win64.zip'
  checksum64     = '5301e976c777d9a7ce882d700ef07b816c959ad6aeb957d0da2cc0a18696f9b7'
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
