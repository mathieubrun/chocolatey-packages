$ErrorActionPreference = 'Stop'
$url64 = 'https://github.com/FreeFem/FreeFem-sources/releases/download/v4.9/FreeFEM-4.9-win7-64.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url64bit       = $url64
  softwareName   = 'freefem*'
  checksum64     = '63f45a976c0af4e98aed0cd82ed0611dfe473364530280c201f053b0d4ee3969'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
