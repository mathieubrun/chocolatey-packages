$ErrorActionPreference = 'Stop'
$url = 'https://github.com/rancher-sandbox/rancher-desktop/releases/download/v1.8.1/Rancher.Desktop.Setup.1.8.1.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url            = $url
  softwareName   = 'Rancher Desktop*'
  checksum       = 'fd4f0aa16a694b18581d5dbfa34a8c8fdaa0202abbc2c4da8a56bf4df2be95e3'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
