. $PSScriptRoot\..\jamovi\update.ps1

function global:au_BeforeUpdate {
  $Latest.URL64 = $Latest.URL64_p
  $Latest.FileType = 'zip'
}

function global:au_SearchReplace {
  @{
    "tools\chocolateyInstall.ps1" = @{
        "(?i)(^\s*packageName\s*=\s*)('.*')" = "`$1'$($Latest.PackageName)'"
        "(?i)(^\s*fileType\s*=\s*)('.*')" = "`$1'$($Latest.FileType)'"
        "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
        "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
    }
  }
}

if ($MyInvocation.InvocationName -ne '.') {
  update -ChecksumFor none
}
