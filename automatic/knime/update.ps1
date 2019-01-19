import-module au
import-module Wormies-AU-Helpers

$release = 'https://www.knime.com/downloads/download-knime'

function global:au_SearchReplace {
  @{
    "$($Latest.PackageName).nuspec" = @{
      "(\<dependency .+?`"$($Latest.PackageName).install`" version=)`"([^`"]+)`"" = "`$1`"[$($Latest.Version)]`""
      "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
    }
  }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest $release
    $re = 'KNIME [\d\.]+'
    $version = ($download_page.ParsedHtml.getElementsByTagName("h2") | Where{ $_.innerText -match $re}).innerText -split ' ' | select -Last 1
    $root = 'https://download.knime.org/analytics-platform/win/'
    $url32_i         = "KNIME%20${version}%20Installer%20%2832bit%29.exe"
    $url64_i         = "KNIME%20${version}%20Installer%20%2864bit%29.exe"
    $url32_p         = "knime_${version}.win32.win32.x86.zip"
    $url64_p         = "knime_${version}.win32.win32.x86_64.zip"

    <#
    if (!$url32_i -or !$url64_i -or !$url32_p -or !$url64_p) {
        throw "Either 32bit or 64bit installer/portable was not found. Please check if naming has changed."
    }
    #>
    
    $release_notes_ver = ($version -split '[.]' | select -First 2 ) -join ''

    return @{
        Version = Get-FixVersion $version
        URL32_i = $root + $url32_i
        URL64_i = $root + $url64_i
        URL32_p = $root + $url32_p
        URL64_p = $root + $url64_p
        ReleaseNotes = "https://www.knime.com/whats-new-in-knime-$release_notes_ver"
    }
}

if ($MyInvocation.InvocationName -ne '.') {
  update -ChecksumFor none
}
