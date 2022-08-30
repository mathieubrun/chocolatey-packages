$ErrorActionPreference = 'Stop'
$url = 'https://github.com/httpie/desktop/releases/download/v2022.13.0/HTTPie-Setup-2022.13.0.exe'
$pp = Get-PackageParameters

$args = '/S'
if ($pp['allusers']) { $args = $args + " /AllUsers" }

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url            = $url
  softwareName   = 'HTTPie*'
  checksum       = '2d60ae2a177dd5ed9d2b829a573d125a8f6eff184570f44534c9d125cd5ab04c'
  checksumType   = 'sha256'
  silentArgs     = $args
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
