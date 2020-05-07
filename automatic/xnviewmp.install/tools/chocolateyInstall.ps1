$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0962-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0962-win-x64.exe'
  checksum       = 'b0830420f032f44ab91b981eae81ce4efb76604e370003497cf276e2ccbf0a9b'
  checksumType   = 'sha256'
  checksum64     = 'c07a0546d778488759daf4a3b5f6838222c723ee3bcfb51ac1d1b9982cf1b1ec'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
