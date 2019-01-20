. $PSScriptRoot\..\xnviewmp\update.ps1

function global:au_SearchReplace {
  @{
    "tools\chocolateyInstall.ps1" = @{
        "(?i)(^\s*packageName\s*=\s*)('.*')" = "`$1'$($Latest.PackageName)'"
        "(?i)(^\s*url\s*=\s*)('.*')"         = "`$1'$($Latest.URL32_i)'"
        "(?i)(^\s*checksum\s*=\s*)('.*')"    = "`$1'$($Latest.Checksum32)'"
        "(?i)(^\s*url64bit\s*=\s*)('.*')"    = "`$1'$($Latest.URL64_i)'"
        "(?i)(^\s*checksum64\s*=\s*)('.*')"  = "`$1'$($Latest.Checksum64)'"
    }
    
    "tools\chocolateyuninstall.ps1" = @{
        "(?i)([$]packageName\s*=\s*)('.*')" = "`$1'$($Latest.PackageName)'"
    }

    "$($Latest.PackageName).nuspec" = @{
      "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
    }
  }
}

update
