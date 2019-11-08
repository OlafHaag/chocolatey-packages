import-module au
import-module Wormies-AU-Helpers

$releases = 'https://www.jamovi.org/download.html'

function global:au_SearchReplace {
  @{
    "$($Latest.PackageName).nuspec" = @{
      "(\<dependency .+?`"$($Latest.PackageName).install`" version=)`"([^`"]+)`"" = "`$1`"[$($Latest.Version)]`""
    }
  }
}

function GetStreams {
    $streams = @{ }

    $root          = (Split-Path $releases -Parent).Replace(":\\", "://")
    $download_page = Invoke-WebRequest $releases -UseBasicParsing
    $urls         = $download_page.Links | ? href -match '.exe$' | % href

    $url_stable_i = $urls | select -First 1
    $url_stable_version = $url_stable_i -split '-|.exe' | select -Last 1 -Skip 2
    $url_stable_p = $url_stable_i -replace '.exe', '.zip'

    if (!$url_stable_i -or !$url_stable_p) {
        throw "Either portable or installer was not found. Please check for changes."
    }

    $url_current_i = $urls | select -Last 1
    $url_current_version = $url_current_i -split '-|.exe' | select -Last 1 -Skip 2
    $url_current_p = $url_current_i -replace '.exe', '.zip'

    if (!$url_current_i -or !$url_current_p) {
        throw "Either portable or installer was not found. Please check for changes."
    }


    $streams.$url_stable_version = @{
        Version = Get-Version $url_stable_version
        URL64_i = $root + $url_stable_i
        URL64_p = $root + $url_stable_p
        }

    $streams.$url_current_version = @{
        Version = Get-Version ($url_current_version + '-current')
        URL64_i = $root + $url_current_i
        URL64_p = $root + $url_current_p
        }

    $streams
}

function global:au_GetLatest {

    return @{
        Streams = GetStreams
    }
}

if ($MyInvocation.InvocationName -ne '.') {
  update -ChecksumFor none
}
