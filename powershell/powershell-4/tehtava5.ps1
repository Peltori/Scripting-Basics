param(
    [string]$foldername = $HOME
)

$filenames = @()
$countfilenames = 0

if (Test-Path $foldername -PathType Container) {
    
    # get all the files in given folder
    $files = Get-ChildItem -Path $foldername |
    Where {$_.PsIsContainer -eq $false}
    
    # iterate trough the items
    $filenames = $files.Name
    
}else{
    Write-Host "Sorry, $foldername does not exist, exiting script."
    exit
}

# loop trough an array named filenames
foreach ($name in $filenames) {
    $name | Out-File -FilePath $HOME\files.txt -Append
    $countfilenames += 1
}
Write-Host "$countfilenames files written to $HOME\files.txt"
notepad $HOME\files.txt