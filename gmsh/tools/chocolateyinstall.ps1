$ErrorActionPreference = 'Stop'
$url64 = 'https://gmsh.info/bin/Windows/gmsh-4.10.1-Windows64.zip'
$installDir = 'C:\gmsh'
$version = '4.10.1'
$dirToExtract = "gmsh-$version-Windows64"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $installDir
  url64bit       = $url64
  checksum64     = '59097088150544c6194aa5a6a921b04a96267b41bf5093745df02c7cd2c88e6a'
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
