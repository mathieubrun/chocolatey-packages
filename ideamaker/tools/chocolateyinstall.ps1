$ErrorActionPreference = 'Stop'
$url = 'https://download.raise3d.com/ideamaker/release/4.2.3/install_ideaMaker_4.2.3.5600.exe'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'EXE'
    url            = $url
    softwareName   = 'ideamaker*'
    checksum       = 'bf52a8f763a6b1d5e00ff1fce18085aa5147f8b3d57f80c3fb02fa7f23b0fb75'
    checksumType   = 'sha256'
    silentArgs     = '/S'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
