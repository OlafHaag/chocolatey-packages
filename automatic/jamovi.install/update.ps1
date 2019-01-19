. $PSScriptRoot\..\jamovi.portable\update.ps1

function global:au_BeforeUpdate {
  $Latest.URL64 = $Latest.URL64_i
  $Latest.FileType = 'exe'
}

update
