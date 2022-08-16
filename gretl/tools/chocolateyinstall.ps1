$ErrorActionPreference = 'Stop'

$url = 'http://prdownloads.sourceforge.net/gretl/gretl-2022b-32.exe'
$url64 = 'http://prdownloads.sourceforge.net/gretl/gretl-2022b-64.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'gretl*'
  checksum       = 'cd47fdaab9eabc3c8b0618fd13620a425e31131ad3014953ea8c46bfbe3dc511'
  checksumType   = 'sha256'
  checksum64     = '553a7a1a8516f31a2772d34a238cf9c4095f4fd5a0edba106c7054f2917cd80d'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
