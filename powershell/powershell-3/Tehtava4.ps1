param(
    [string]$foldername,
    [string]$filename,
    [int]$number
)

$filePath = Join-Path -Path $foldername -ChildPath $filename

if (Test-Path $foldername -PathType Container) {
    Write-Host "The folder $foldername exists"
} else {
    New-Item -Path $foldername -ItemType Directory
      
    for ($i = 1; $i -le $number; $i++) {
        $newFile = $filename + $i
        $newFilePath = Join-Path -Path $foldername -ChildPath $newFile
        New-Item -Path $newFilePath -ItemType File
        Write-Output "Created file: $newFilePath"
    }
    Write-Host "Created $number files"
    Write-Output (Get-ChildItem $foldername | Sort-Object Name | Format-Table Name)
}