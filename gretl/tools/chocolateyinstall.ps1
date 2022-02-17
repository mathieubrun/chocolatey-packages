$ErrorActionPreference = 'Stop'

$url = 'http://prdownloads.sourceforge.net/gretl/gretl-2021d-32.exe'
$url64 = 'http://prdownloads.sourceforge.net/gretl/gretl-2021d-64.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'gretl*'
  checksum       = 'D8DCF0E4145CF0A0B331EE8BC0571C81F0AD9B7E486D184B5E5C2419A68038A1'
  checksumType   = 'sha256'
  checksum64     = '13E442009B10A217032F1F68C50E2807381439D892D1243F7841955B765CC4FC'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
