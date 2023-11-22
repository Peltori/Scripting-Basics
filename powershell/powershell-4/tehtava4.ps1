# counter for how many files are creatted
$filecount = 0

# Get date and time
$GetDate = Get-Date

while ($true) {
    $filename = Read-Host "Give a file name, press Enter to quit"
    if ($filename -eq '') {
        break
    }
    # use Join-Path to create the path
    $path = Join-Path -Path $HOME -ChildPath $filename
    
    # use Out-File to write data to the files
    $ShortDateAndTime = $GetDate.ToShortDateString() +' ' + $GetDate.ToShortTimeString()
    $ShortDateAndTime | Out-File -FilePath $path
    $filecount += 1
}
Write-Host "$filecount files were created succesfully"