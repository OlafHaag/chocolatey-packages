import-module au
import-module Wormies-AU-Helpers

$releases = 'https://www.gcc.tu-darmstadt.de/home/proj/mve/'

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $re  = "mve-.*-win64.zip"
    $url64 = $download_page.links | ? href -match $re | select -First 1 -expand href
    $url64 = 'https://www.gcc.tu-darmstadt.de' + $url64

    $version = $url64 -split '-|.zip' | select -Last 1 -Skip 2
    $version = [datetime]::ParseExact($version,'yyyyMMdd',$null).ToString("yyyy.MM.dd")


    return @{
        URL64        = $url64
        Version      = Get-FixVersion $version
    }
}

function global:au_SearchReplace {
    @{
        "tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*packageName\s*=\s*)('.*')" = "`$1'$($Latest.PackageName)'"
            "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

update -ChecksumFor 64