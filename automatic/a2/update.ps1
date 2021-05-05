import-module au
import-module Wormies-AU-Helpers

$releases = 'https://github.com/ewerybody/a2/releases/'

function global:au_SearchReplace {
  @{
    "$($Latest.PackageName).nuspec" = @{
      "(\<dependency .+?`"$($Latest.PackageName).install`" version=)`"([^`"]+)`"" = "`$1`"[$($Latest.Version)]`""
      "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
    }
  }
}

function GetStreams() {
    $download_page = Invoke-WebRequest $releases -UseBasicParsing

    # Patterns for matching URLs. Variable suffix p for portable, and i for installer.
    # Assumes version as part of filename and that dev releases end in a word, e.g. alpha, beta etc.
    $pattern_stable_i = '.*\/download\/([\d\.]+)\/.*\1_silent\.exe$'
    $pattern_dev_i = '.*\/download\/([\d\.]+)\/.*\1_(\w+)_silent\.exe$'
    $pattern_stable_p = '.*\/download\/([\d\.]+)\/.*\1\.zip$'
    $pattern_dev_p = '.*\/download\/([\d\.]+)\/.*\1_(\w+)\.zip$'

    # Get all silent installers. Select latest entries of releases (first in list).
    $url_stable_i = $download_page.Links | ? href -match $pattern_stable_i | select -First 1 -expand href
    $url_dev_i = $download_page.Links | ? href -match $pattern_dev_i | select -First 1 -expand href
    # Get all zip-files in stable and dev releases.
    $url_stable_p = $download_page.Links | ? href -match $pattern_stable_p | select -First 1 -expand href
    $url_dev_p = $download_page.Links | ? href -match $pattern_dev_p | select -First 1 -expand href

    # Check for the existance of the stable releases stream.
    $stable_fails = (!$url_stable_i -or !$url_stable_p)
    if ($stable_fails) {
      Write-Warning "Either portable archive or installer for stable stream were not found. Please check for changes."
    }
    # Check for the existance of the development releases stream.
    $dev_fails = (!$url_dev_i -or !$url_dev_p)
    if ($dev_fails) {
      throw "Either portable archive or installer for development stream were not found. Please check for changes."
    }

    # Retieve version info.
    # For the stable release, get it from the tag in the URL.
    $version_stable_i = $url_stable_i | Select-String -Pattern $pattern_stable_i | % {"$($_.matches.groups[1])"}
    $version_stable_p = $url_stable_p | Select-String -Pattern $pattern_stable_p | % {"$($_.matches.groups[1])"}

    # Get root URL for concatenation with collected relative links to create absolute download URLs.
    $root = "https://" + ([uri]$releases).Host
    # Initialize empty streams.
    $streams = [ordered]@{ }

    # Make sure we have the same version for portable and installer packages within each stream.
    if ($version_stable_i -ne $version_stable_p) {
        throw "Versions between portable and installer for development release differ (portable: '$version_stable_p', installer: '$version_stable_i')."
    } elseif (!$stable_fails) {
        $streams.Add('stable', @{
          Version = Get-Version $version_stable_i;
          URL64_i = $root + $url_stable_i;
          URL64_p = $root + $url_stable_p;
          ReleaseNotes = "${releases}tag/${version_stable_i}"
          })
    }

    # For the development release, get version from name for the time being.
    $version_dev_i = $url_dev_i | Select-String -Pattern $pattern_dev_i | % {"$($_.matches.groups[1])-$($_.matches.groups[2])"}
    $version_dev_p = $url_dev_p | Select-String -Pattern $pattern_dev_p  | % {"$($_.matches.groups[1])-$($_.matches.groups[2])"}

    # Make sure we have the same version for portable and installer packages within each stream.
    if ($version_dev_i -ne $version_dev_p) {
        throw "Versions between portable and installer for development release differ (portable: '$version_dev_p', installer: '$version_dev_i')."
    } elseif (!$dev_fails) {
        $streams.Add('dev', @{
          Version = Get-Version $version_dev_i;
          URL64_i = $root + $url_dev_i;
          URL64_p = $root + $url_dev_p;
          ReleaseNotes = "${releases}tag/$($version_dev_i -split '-' | select -First 1)"
          })
    }

    Write-Host $streams.Count "streams collected:" $streams.Keys
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
