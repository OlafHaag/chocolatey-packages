$zipFileName = ''

function Get-InstallationPath {

<#
.SYNOPSIS
    Returns the installation path of the installed chocolatey portable package.

.DESCRIPTION
    Get-InstallationPath is a function that returns the installation path of a
    portable chocolatey package by reading the content of the log file from when the 
    software was extracted from the zip archive.

.PARAMETER ZipFile
    The name of the zip archive from which the software was extracted.

.PARAMETER MatchPattern
    Which entry in the log should be looked for to determine the root of the
    installation directory.

.EXAMPLE
     Get-InstallationPath -zipFile 'a2_portable_0.0.11_alpha.zip'

.EXAMPLE
     Get-InstallationPath 'a2_portable_0.0.11_alpha.zip'

.EXAMPLE
     Get-InstallationPath -ZipFile 'a2_portable_0.0.11_alpha.zip' -MatchPattern "a2ui\.exe$"

.INPUTS
    String

.OUTPUTS
    String

.NOTES
    Author:  Olaf Haag
    Website: https://olafhaag.com
    Twitter: @olafhaag3D
#>

    [CmdletBinding()]
    param (
      [Parameter(Mandatory=$true, Position=0)]
      [string]$zipFile
      [ValidateNotNullOrEmpty()]
      [string]$MatchPattern = "a2\.exe$"
    )

    #Function Body
    # Find installation directory.
    $toolsDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
    $pkgPath = Split-Path -Path $toolsdir -Parent
    $installDir = Get-Content $(Join-Path $pkgPath "$ZipFile.txt") | ?{ $_ -match $MatchPattern } | select -First 1 | Split-Path -Parent

    Write-Output $installDir
}
