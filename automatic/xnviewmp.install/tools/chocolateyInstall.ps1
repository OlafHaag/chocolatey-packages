$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0997-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0997-win-x64.exe'
  checksum       = 'cabb5d918f0d82c09f185e14fec00ee41517d9751f7771448fc409ddd8221c23'
  checksumType   = 'sha256'
  checksum64     = '8cc3ebb8eae6ae0bbd0e35a8b4b12953b1c211e2f0b21fc9c80187dea44dab2b'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
