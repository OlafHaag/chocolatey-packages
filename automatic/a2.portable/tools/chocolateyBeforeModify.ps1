# Todo: check that actually only the portable version is stopped. Need installation path.
# $env:ChocolateyPackageName
Get-Process a2* | Stop-Process -Force -ErrorAction SilentlyContinue  # Can return array.
Get-Process AutoHotkey | Stop-Process -Force -ErrorAction SilentlyContinue
