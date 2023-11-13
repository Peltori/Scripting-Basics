param(
    [string]$foldername,
    [string]$filename
)

$filePath = Join-Path -Path $foldername -ChildPath $filename

if (Test-Path $filePath -PathType Leaf) {
   Write-Host "The file $filename in the $foldername exists"
} else {
    $createFile = Read-Host "Create the file $filename Yes/No?"
    if ($createFile -eq "Yes") {
        New-Item -Path $filePath -ItemType File
    } else {
        Write-Host "Good bye!"
    }
}