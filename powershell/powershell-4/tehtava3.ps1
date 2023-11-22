param(
    [string]$fileName
)
# create an empty array and use Join-Path to create the filename in $Home
$WsNames = @()
$path = Join-Path -Path $HOME -ChildPath "$fileName"

while ($true) {
    $WsName = Read-Host "Give a workstation name, press Enter to quit"
    if ($WsName -eq '') {
        break
    }
    $WsNames += $WsName
}

foreach ($name in $WsNames) {
    $name | Out-File -FilePath $path -Append
}
Write-Host "$path created succesfully"
notepad $path