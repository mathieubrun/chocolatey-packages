$ErrorActionPreference = 'Stop'
$url = 'https://github.com/httpie/desktop/releases/download/v2022.15.1/HTTPie-Setup-2022.15.1.exe'
$pp = Get-PackageParameters

$args = '/S'
if ($pp['allusers']) { $args = $args + " /AllUsers" }

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url            = $url
  softwareName   = 'HTTPie*'
  checksum       = '6308b420ded83f45ec40f13826ca6945157dbb8739391c70ad68b19eb1f53ff1'
  checksumType   = 'sha256'
  silentArgs     = $args
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
