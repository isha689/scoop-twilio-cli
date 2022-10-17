param(
    [String] $version = ''
)
if(!$env:SCOOP_HOME) { $env:SCOOP_HOME = Resolve-Path (scoop prefix scoop) }
$checkver = "$env:SCOOP_HOME/bin/checkver.ps1"
$dir = "$psscriptroot/../" # checks the parent dir
Invoke-Expression -command "& '$checkver' -a 'twiliodraft' -Update -v '$version'"