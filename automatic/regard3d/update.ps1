import-module au
import-module Wormies-AU-Helpers

$releases = 'https://sourceforge.net/projects/regard3d/files/Regard3D/'

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    $version = ($download_page.ParsedHtml.getElementsByTagName("span") | Where{ $_.className  -eq "name"}).innerText | select -First 1
    
    $url64 = "${version}/Regard3D_${version}_Setup.exe/download"
    

    return @{
        URL64        = $releases + $url64
        Version      = Get-FixVersion $version
        ReleaseNotes = "https://sourceforge.net/projects/regard3d/files/Regard3D/${version}/"
        SRC_URL      = "https://sourceforge.net/projects/regard3d/files/Regard3D/${version}/Regard3D_src_${version}.7z/download"
    }
}

function global:au_SearchReplace {
    @{
        "tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*packageName\s*=\s*)('.*')" = "`$1'$($Latest.PackageName)'"
            "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
        "$($Latest.PackageName).nuspec" = @{
            "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
            "(\<projectSourceUrl\>).*?(\</projectSourceUrl\>)" = "`${1}$($Latest.SRC_URL)`$2"
        }
    }
}

update -ChecksumFor 64