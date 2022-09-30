$ErrorActionPreference = 'Stop'
$url = 'http://purplepen.golde.org/downloads/purplepen-330.exe'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'EXE'
    url            = $url
    softwareName   = 'Purple Pen*'
    checksum       = 'cd63523288b3fc295c8df389a568ab050f2246a24b4f4333e13bad1969948f87'
    checksumType   = 'sha256'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
