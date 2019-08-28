import-module au
import-module Wormies-AU-Helpers

$releases = 'https://github.com/JabRef/jabref/releases'

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $re  = "JabRef_windows-x64.*.exe"
    $url64 = $download_page.links | ? href -match $re | select -First 1 -expand href
    $url64 = 'https://github.com' + $url64

    $url32 = $url64 -replace '-x64', '-x32'

    $version = $url64 -split 'x64_|.exe' | select -Last 1 -Skip 1
    $version = $version -replace '_', '.'

    return @{
        URL32        = $url32
        URL64        = $url64
        Version      = $version
        ReleaseNotes = "https://github.com/JabRef/jabref/blob/v${version}/CHANGELOG.md"
    }
}

function global:au_SearchReplace {
    @{
        "tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*packageName\s*=\s*)('.*')" = "`$1'$($Latest.PackageName)'"
            "(?i)(^\s*fileType\s*=\s*)('.*')" = "`$1'$($Latest.FileType)'"
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }

        "$($Latest.PackageName).nuspec" = @{
            "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }
    }
}

update
