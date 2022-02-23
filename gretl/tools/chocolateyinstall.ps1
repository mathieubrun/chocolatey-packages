$ErrorActionPreference = 'Stop'

$url = 'http://prdownloads.sourceforge.net/gretl/gretl-2022a-32.exe'
$url64 = 'http://prdownloads.sourceforge.net/gretl/gretl-2022a-64.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'gretl*'
  checksum       = '97c85c0b8f6920aaebe8c72af95b3d2bf306e6938a3afbe470bae96777e48e56'
  checksumType   = 'sha256'
  checksum64     = '0924485ab543822577742d173dca407c5b4269d16c59f580e1b23e6029ae8ed4'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
