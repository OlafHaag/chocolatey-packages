$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.portable'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-1.6.1.0-win64.zip'
  checksum64     = '2bf8b3f0ce7b167886ac78462645aa46160276bdc8597f1369c9c3eb165f0566'
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
