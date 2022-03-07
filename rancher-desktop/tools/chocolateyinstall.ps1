$ErrorActionPreference = 'Stop'
$url = 'https://github.com/rancher-sandbox/rancher-desktop/releases/download/v1.1.1/Rancher.Desktop.Setup.1.1.1.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url            = $url
  softwareName   = 'Rancher Desktop*'
  checksum       = 'DD3D52501963FD1757E8D0B972DEDA264AFE38D8F0EF3383AAA5B1BD6B6C0747'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
