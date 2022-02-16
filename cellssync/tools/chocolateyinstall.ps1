$ErrorActionPreference = 'Stop'
$url64 = 'https://download.pydio.com/pub/cells-sync/release/0.9.2/windows-amd64/CellsSync-0.9.2.msi'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64
  softwareName   = 'cellssync*'
  checksum64     = 'C61545A8B3DABC670A02974AC6782CE86DF796B14FCBA12AC74BF367BA46CB49'
  checksumType64 = 'sha256'
  silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
