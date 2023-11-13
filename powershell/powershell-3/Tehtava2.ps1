param(
    [string]$foldername,
    [string]$filename
)

$filePath = Join-Path -Path $foldername -ChildPath $filename

if (Test-Path $foldername -PathType Container) {
    if (Test-Path $filePath -PathType Leaf) {
        Write-Host "The file $filename in the $foldername exists"
    } else {
        Write-Host "Sorry, $filename in the $foldername does not exist."
    }
} else {
    Write-Host "Sorry, the $foldername does not exist"
}