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

function global:au_GetLatest {
    $root          = (Split-Path $releases -Parent).Replace(":\\", "://")
    $download_page = Invoke-WebRequest $releases -UseBasicParsing
    $url_i         = $download_page.Links | ? href -match '.exe$' | % href | select -First 1
    $url_p         = $url_i -replace '.exe', '.zip'
    $version       = $url_i -split '-|.exe' | select -Last 1 -Skip 2

    if (!$url_i -or !$url_p) {
        throw "Either portable or installer was not found. Please check for changes."
    }

    return @{
        Version = Get-FixVersion $version
        URL64_i = $root + $url_i
        URL64_p = $root + $url_p
    }
}

if ($MyInvocation.InvocationName -ne '.') {
  update -ChecksumFor none
}
