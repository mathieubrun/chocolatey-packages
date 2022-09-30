$ErrorActionPreference = 'Stop'
$url = 'https://purplepen.golde.org/downloads/purplepen-341.exe'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'EXE'
    url            = $url
    softwareName   = 'Purple Pen*'
    checksum       = '3f8594fbe37a50e2d7a2dcc269b06faefed31d9ba71a75602cb59681606b154f'
    checksumType   = 'sha256'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
