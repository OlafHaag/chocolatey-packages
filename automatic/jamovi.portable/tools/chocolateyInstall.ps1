$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jamovi.portable'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  url64bit       = 'https://www.jamovi.org/downloads/jamovi-1.8.1.0-win64.zip'
  checksum64     = 'c5ce7e212a79099a481eeee6d8dd63882c2954694b181ba6f36b960e5f71a526'
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
