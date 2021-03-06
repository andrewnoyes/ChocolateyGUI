$scriptPath =  $(Split-Path $MyInvocation.MyCommand.Path)

$packageArgs = @{
  packageName = 'ChocolateyGUI'
  softwareName   = 'ChocolateyGUI'
  fileType = 'msi'
  silentArgs = '/quiet'
  file = Join-Path $scriptPath 'ChocolateyGUI.msi'
}

Install-ChocolateyInstallPackage @packageArgs

Remove-Item -Force $packageArgs.file