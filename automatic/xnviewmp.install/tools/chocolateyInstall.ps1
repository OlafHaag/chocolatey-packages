$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.install'
  fileType       = 'exe'
  url            = 'https://download.xnview.com/old_versions/XnViewMP-0991-win.exe'
  url64bit       = 'https://download.xnview.com/old_versions/XnViewMP-0991-win-x64.exe'
  checksum       = '886d7101825134bb9dbe359a7c4d21039d5597cc5118bcedafe9d1a3b60c75f6'
  checksumType   = 'sha256'
  checksum64     = '04297a56e1c9d7937a38bbfbd389f871548c27fe75098f149d844339b2bbd29f'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
