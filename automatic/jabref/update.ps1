import-module au
import-module Wormies-AU-Helpers

# Github repo info
$owner = "JabRef"
$repo = "jabref"

$dev_releases = 'https://builds.jabref.org/main/'

function global:au_SearchReplace {
  @{
    "$($Latest.PackageName).nuspec" = @{
      "(\<dependency .+?`"$($Latest.PackageName).install`" version=)`"([^`"]+)`"" = "`$1`"[$($Latest.Version)]`""
      "(\<releaseNotes\>).*?(\</releaseNotes\>)"                                  = "`${1}$($Latest.ReleaseNotes)`$2"
    }
  }
}

function Get-LatestGitHubRelease {
  param (
    [string]$Owner,
    [string]$Repo
  )

  $apiUrl = "https://api.github.com/repos/$Owner/$Repo/releases/latest"

  # No need yet to retrieve the GitHub token from a secret, but leaving this here for future reference.
  #$token = $env:GITHUB_TOKEN  # GitHub token secret name in this example is 'GITHUB_TOKEN'

  # Use the token in the headers
  $headers = @{
    #'Authorization' = "token $token"
    'Accept' = 'application/vnd.github.v3+json'
  }

  try {
    $response = Invoke-RestMethod -Uri $apiUrl -Headers $headers -Method Get

    $rawVersion = $response.tag_name
    $strippedVersion = $rawVersion -replace '^v', ''  # Strip leading 'v'
    $msiAsset = $response.assets | Where-Object { $_.name -like '*.msi' }
    $portableAsset = $response.assets | Where-Object { $_.name -like '*portable_windows.zip' }
    $changelogLink = "https://github.com/$Owner/$Repo/blob/$rawVersion/CHANGELOG.md"

    if ($msiAsset) {
      $msiDownloadUrl = $msiAsset.browser_download_url
    }
    else {
      $msiDownloadUrl = $null
    }

    if ($portableAsset) {
      $portableDownloadUrl = $portableAsset.browser_download_url
    }
    else {
      $portableDownloadUrl = $null
    }

    [PSCustomObject]@{
      LatestVersion       = $strippedVersion
      MSIDownloadUrl      = $msiDownloadUrl
      PortableDownloadUrl = $portableDownloadUrl
      ChangelogLink       = $changelogLink
    }
  }
  catch {
    Write-Host "Error: $_"
    $null
  }
}

function GetStreams() {
  $streams = [ordered]@{ }

  $latest_release = Get-LatestGitHubRelease -Owner $owner -Repo $repo
  $version = $latest_release.LatestVersion

  if (!$latest_release.MSIDownloadUrl -or !$latest_release.PortableDownloadUrl) {
    throw "Either portable or installer for stream ('$version') was not found. Please check for changes."
  }

  $download_page = Invoke-WebRequest -Uri $dev_releases -UseBasicParsing
  $re = ".*.msi"
  $url_dev_i = $download_page.links | ? href -match $re | select -Last 1 -expand href
  $version_dev = $url_dev_i -split '-|.msi' | select -Last 1 -Skip 1
  $url_dev_p = (Split-Path $url_dev_i -Parent).Replace(":\\", "://").Replace("\", "/") + "/JabRef-${version_dev}-portable_windows.zip"

  if (!$url_dev_i -or !$url_dev_p) {
    throw "Either portable or installer for dev stream ('$version_dev') was not found. Please check for changes."
  }

  $streams.Add('release', @{
      Version      = Get-Version $version;
      URL64_i      = $latest_release.MSIDownloadUrl;
      URL64_p      = $latest_release.PortableDownloadUrl;
      ReleaseNotes = "https://github.com/JabRef/jabref/blob/v${version}/CHANGELOG.md";
    })

  $dev_root = (Split-Path $dev_releases -Parent).Replace(":\\", "://")

  $streams.Add('dev', @{
      Version      = Get-Version ($version_dev + '-dev');
      URL64_i      = $dev_root + $url_dev_i;
      URL64_p      = $dev_root + $url_dev_p;
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
