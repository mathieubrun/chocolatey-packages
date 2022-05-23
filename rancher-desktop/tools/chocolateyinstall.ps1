$ErrorActionPreference = 'Stop'
$url = 'https://github.com/rancher-sandbox/rancher-desktop/releases/download/v1.3.0/Rancher.Desktop.Setup.1.3.0.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url            = $url
  softwareName   = 'Rancher Desktop*'
  checksum       = '92108cbbd8c98f99b00a608d8f7d21e12faeca76f16890585ef212cc5bf1c779'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
