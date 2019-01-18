import-module au
import-module Wormies-AU-Helpers

function global:au_GetLatest {
    $dl_redirect = 'https://srv3.airdroid.com/p20/web/getbinaryredirect?type=exe&channel=&version='
    $url = Get-RedirectedUrl -url $dl_redirect
    $version = $url -split '_|.exe' | select -Last 1 -Skip 1
    $version = Get-FixVersion $version

    return @{ Version = $version; URL32 = $url }
}

function global:au_SearchReplace {
    @{
        "tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*packageName\s*=\s*)('.*')" = "`$1'$($Latest.PackageName)'"
            "(?i)(^\s*fileType\s*=\s*)('.*')" = "`$1'$($Latest.FileType)'"
            "(?i)(^\s*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

update