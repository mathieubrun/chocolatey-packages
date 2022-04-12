Import-Module AU

$releases = 'https://github.com/httpie/desktop/releases/latest'
$domain = 'https://github.com'

function global:au_SearchReplace {
    @{
        "tools\chocolateyinstall.ps1" = @{
            "(^[$]url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url = $download_page.Links | Where-Object href -match 'HTTPie-Setup-.*\.exe' | Select-Object -First 1 -ExpandProperty href
    $version = Get-Version $url

    return @{
        Version  = $version
        URL32    = "${domain}${url}"
    }

}

update -ChecksumFor 32