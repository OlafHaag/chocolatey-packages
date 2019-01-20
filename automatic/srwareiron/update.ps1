import-module au
import-module Wormies-AU-Helpers

$forum_url = "https://www.srware.net/forum/viewforum.php?f=18"

function global:au_SearchReplace {
  @{
    "$($Latest.PackageName).nuspec" = @{
      "(\<dependency .+?`"$($Latest.PackageName).install`" version=)`"([^`"]+)`"" = "`$1`"[$($Latest.Version)]`""
      "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
    }
  }
}

function global:au_GetLatest {
    $forum_page = Invoke-WebRequest $forum_url
    $re = 'New Iron-Version: [\d\.]+ Stable for Windows'
    $latest_anouncement = ($forum_page.ParsedHtml.getElementsByTagName("A") | Where{ $_.innerText -match $re}) | select -First 1
    $version = $($latest_anouncement.innerText) -split ' ' | select -First 1 -Skip 2
        
    $release_notes = "https://www.srware.net/forum" + $($latest_anouncement.href -replace 'about:.','')
    $release_notes = Invoke-WebRequest -Uri "http://tinyurl.com/api-create.php?url=${release_notes}" | Select-Object -ExpandProperty Content  # CPack was throwing an error with acutal url!
    
    return @{
        Version = Get-FixVersion $version
        URL32_i = "https://www.srware.net/downloads/srware_iron.exe"
        URL64_i = "https://www.srware.net/downloads/srware_iron64.exe"
        URL32_p = "https://www.srware.net/downloads/IronPortable.zip"
        URL64_p = "https://www.srware.net/downloads/IronPortable64.zip"
        ReleaseNotes = $release_notes
    }
}

if ($MyInvocation.InvocationName -ne '.') {
  update -ChecksumFor none
}
