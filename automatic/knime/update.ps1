import-module au
import-module Wormies-AU-Helpers

# Knime GitHub repository tags API
$release = 'https://api.github.com/repos/knime/knime-core/tags'

function global:au_SearchReplace {
  @{
    "$($Latest.PackageName).nuspec" = @{
      "(\<dependency .+?`"$($Latest.PackageName).install`" version=)`"([^`"]+)`"" = "`$1`"[$($Latest.Version)]`""
      "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
    }
  }
}

function global:au_GetLatest {
    # Fetch list of tags (releases)
    $tags       = Invoke-RestMethod -Uri $release
    # Identify latest tag (release)
    $tag        = $tags.name | Select-String -Pattern "analytics-platform/.+" | Select-Object -First 1
    # Parse version number
    $version    = $tag -split "/" | Select-Object -Last 1
    # Public download page
    $root       = 'https://download.knime.org/analytics-platform/win/'
    # Installers
    $url64_i    = "KNIME%20${version}%20Installer%20%2864bit%29.exe"
    $url64_p    = "knime_${version}.win32.win32.x86_64.zip"

    <#
    if (!$url32_i -or !$url64_i -or !$url32_p -or !$url64_p) {
        throw "Either 32bit or 64bit installer/portable was not found. Please check if naming has changed."
    }
    #>

    $release_notes_ver = ($version -split '[.]' | Select-Object -First 2 ) -join ''

    return @{
        Version = Get-FixVersion $version
        URL64_i = $root + $url64_i
        URL64_p = $root + $url64_p
        ReleaseNotes = "https://www.knime.com/whats-new-in-knime-$release_notes_ver"
    }
}

if ($MyInvocation.InvocationName -ne '.') {
  update -ChecksumFor none
}
