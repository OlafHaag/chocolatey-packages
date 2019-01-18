$packageArgs = @{
  packageName    = 'jamovi.portable'
  fileType       = 'zip'
  unzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-0.9.2.8-win64.zip'
  checksum64     = 'aaab2b32a0b7e13e5d77e18767dbb49110d1a85ce55d7057b5bbabd0f1c80241'
  checksumType64 = 'sha256'
}


Install-ChocolateyZipPackage @packageArgs

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
