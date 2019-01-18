$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'jabref'
  fileType       = 'exe'
  url            = 'https://github.com/JabRef/jabref/releases/download/v4.3.1/JabRef_windows_4_3_1.exe'
  url64bit       = 'https://github.com/JabRef/jabref/releases/download/v4.3.1/JabRef_windows-x64_4_3_1.exe'
  checksum       = '7abe526bccdcea38df236a3879bb60f7d444d064dd51a3fc31bc0954e504b28e'
  checksum64     = '5ca382423459dc15d382f5bf6d0acd2194e98bda46b8b14642784d4f8a51f8ff'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '-q'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
