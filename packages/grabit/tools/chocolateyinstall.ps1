$ErrorActionPreference = 'Stop';

$packageName= 'grabit'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.shemes.com/GrabIt173b.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = '/VERYSILENT'

  softwareName  = 'grabit*'
  checksum      = 'a8fc2490262c49d033f786de59b98669'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs
