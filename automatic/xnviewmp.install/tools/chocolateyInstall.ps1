$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-1.3.0-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-1.3.0-win-x64.exe'
  checksum       = '9c456ec3eebe2c678ef615dc833a72315a6fc139261a417ecb9b2e813da1b698'
  checksumType   = 'sha256'
  checksum64     = '1de5b2ba8d3974a9fb8551490a655d09ab70c808bf626dd5b0f743ade6a2dfce'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
