param(
    [string]$foldername,
    [string]$newname
)

#$filePath = Join-Path -Path $foldername -ChildPath $newname

if (Test-Path $foldername -PathType Container) {
    Write-Host "The folder $foldername exists"
    $getFiles = Get-ChildItem $foldername
    $countFiles = $getFiles.Count
    $rename = Read-Host "All $countFiles files will be renamed with name $newname. Yes/No?"

    if ($rename -eq "Yes") {
        $counter = 1
        $getFiles | ForEach-Object {
            #$newFilePath = Join-Path -Path $_.DirectoryName -ChildPath ("$newname$($_.Name)")
            Rename-Item -Path $_.FullName -NewName ($newname + $counter)
            $counter++
        }
        Write-Host "Files renamed successfully"
    }
    else {
        Write-Host "Aborting renaming files"
    }
}
else {
    Write-Host "The folder $foldername does not exist"
    exit
}