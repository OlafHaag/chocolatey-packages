. $PSScriptRoot\..\jamovi-current\update.ps1

function global:au_SearchReplace {
  @{
    "tools\chocolateyInstall.ps1" = @{
        "(?i)(^\s*packageName\s*=\s*)('.*')" = "`$1'$($Latest.PackageName)'"
        "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64_p)'"
        "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
    }
  }
}


update -ChecksumFor 64
