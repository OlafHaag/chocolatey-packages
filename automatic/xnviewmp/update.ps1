import-module au
import-module Wormies-AU-Helpers

$releases_url = 'https://www.xnview.com/en/xnviewmp/'

function global:au_SearchReplace {
  @{
    "$($Latest.PackageName).nuspec" = @{
      "(\<dependency .+?`"$($Latest.PackageName).install`" version=)`"([^`"]+)`"" = "`$1`"[$($Latest.Version)]`""
      "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
    }
  }
}

function global:au_GetLatest {
    $releases_page = Invoke-WebRequest $releases_url

    $version_text = ($releases_page.ParsedHtml.getElementsByTagName("p") | Where{ $_.className -eq "lead" -and $_.innerText -match "Version ([\d\.]+)"}).innerText
    $version = $Matches[1]
    $version_dl = $version.Replace(".", "")

    $download_page = Invoke-WebRequest 'https://download.xnview.com/old_versions/'
    $url32_i         = $download_page.Links | ? href -match ($version_dl + '-win.exe$') | % href
    $url64_i         = $download_page.Links | ? href -match ($version_dl + '-win-x64.exe$') | % href
    $url32_p         = $download_page.Links | ? href -match ($version_dl + '-win.zip$') | % href
    $url64_p         = $download_page.Links | ? href -match ($version_dl + '-win-x64.zip$') | % href

    if (!$url32_i -or !$url64_i -or !$url32_p -or !$url64_p) {
        throw "Either 32bit or 64bit installer/portable was not found. Please check if naming has changed."
    }


    $release_notes = $download_page.Links | ? innerText -match 'Changelog' | % href| select -First 1 -Skip 1
    $release_notes = $releases_url + $release_notes

    return @{
        Version = Get-FixVersion $version
        URL32_i = $url32_i
        URL64_i = $url64_i
        URL32_p = $url32_p
        URL64_p = $url64_p
        ReleaseNotes = $release_notes
    }
}

if ($MyInvocation.InvocationName -ne '.') {
  update -ChecksumFor none
}
