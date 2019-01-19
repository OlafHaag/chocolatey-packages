. $PSScriptRoot\..\jamovi\update.ps1

function global:au_SearchReplace {
  @{
    "tools\chocolateyInstall.ps1" = @{
        "(?i)(^\s*packageName\s*=\s*)('.*')" = "`$1'$($Latest.PackageName)'"
        "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64_i)'"
        #"(?i)(^\s*fileType\s*=\s*)('.*')"   = "`$1'$($Latest.FileType)'"
        "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
    }
  }
}


update -ChecksumFor 64
