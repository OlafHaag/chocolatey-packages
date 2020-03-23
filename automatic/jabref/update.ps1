import-module au
import-module Wormies-AU-Helpers

$releases = 'https://github.com/JabRef/jabref/releases'
$dev_releases = 'https://builds.jabref.org/master/'

function global:au_SearchReplace {
  @{
    "$($Latest.PackageName).nuspec" = @{
      "(\<dependency .+?`"$($Latest.PackageName).install`" version=)`"([^`"]+)`"" = "`$1`"[$($Latest.Version)]`""
    }
  }
}

function GetStreams() {
    $streams = [ordered]@{ }

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    $re  = ".*.msi"
    $url_i = $download_page.links | ? href -match $re | select -First 1 -expand href
    $version = $url_i -split 'JabRef-|.msi' | select -Last 1 -Skip 1
    $url_p = (Split-Path $url_i -Parent).Replace(":\\", "://").Replace("\", "/") + "/JabRef-${version}-portable_windows.zip"

    if (!$url_i -or !$url_p) {
        throw "Either portable or installer for stream (v'$version') was not found. Please check for changes."
    }

    $download_page = Invoke-WebRequest -Uri $dev_releases -UseBasicParsing
    $re  = ".*.msi"
    $url_dev_i = $download_page.links | ? href -match $re | select -Last 1 -expand href
    $version_dev = $url_dev_i -split '-|.msi' | select -Last 1 -Skip 1
    $url_dev_p = (Split-Path $url_dev_i -Parent).Replace(":\\", "://").Replace("\", "/") + "/JabRef-${version_dev}-portable_windows.zip"

    if (!$url_dev_i -or !$url_dev_p) {
        throw "Either portable or installer for dev stream (v'$version_dev') was not found. Please check for changes."
    }

    $root     = 'https://github.com'
    $dev_root = (Split-Path $dev_releases -Parent).Replace(":\\", "://")

    $streams.Add('release', @{
        Version = Get-Version $version;
        URL64_i = $root + $url_i;
        URL64_p = $root + $url_p;
        ReleaseNotes = "https://github.com/JabRef/jabref/blob/v${version}/CHANGELOG.md"
        })

    $streams.Add('dev', @{
        Version = Get-Version ($version_dev + '-dev');
        URL64_i = $dev_root + $url_dev_i;
        URL64_p = $dev_root + $url_dev_p;
        ReleaseNotes = "development snapshot"
        })

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
