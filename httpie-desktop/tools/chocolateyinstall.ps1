$ErrorActionPreference = 'Stop'
$url = 'https://github.com/httpie/desktop/releases/download/v2022.6.0/HTTPie-Setup-2022.6.0.exe'
$pp = Get-PackageParameters

$args = '/S'
if ($pp['allusers']) { $args = $args + " /AllUsers" }

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url            = $url
  softwareName   = 'HTTPie*'
  checksum       = 'C9DCF1A74CEC0DDDE99D769558AC00AA524C68F54601DFD260ADB0EB541D7289'
  checksumType   = 'sha256'
  silentArgs     = $args
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
