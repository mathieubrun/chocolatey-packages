$ErrorActionPreference = 'Stop'
$url64 = 'https://gmsh.info/bin/Windows/gmsh-4.10.2-Windows64.zip'
$installDir = 'C:\gmsh'
$version = '4.10.2'
$dirToExtract = "gmsh-$version-Windows64"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $installDir
  url64bit       = $url64
  checksum64     = '924d0a3819479eb444647c21a06049957af87a65dd64b7f731802c11f83dd862'
  checksumType64 = 'sha256'
}

# Unzip file to installDir
Install-ChocolateyZipPackage @packageArgs

# Location of executable
$exeLocation = "$installDir\$dirToExtract\gmsh.exe"

# Create Start Menu shorcuts
Install-ChocolateyShortcut -shortcutFilePath "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\Gmsh\Gmsh.lnk" -targetPath $exeLocation -WorkingDirectory "$installDir\$dirToExtract" -IconLocation $exeLocation

# Remove old version of Gmsh
Get-ChildItem -Path $installDir -Exclude $dirToExtract | Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
