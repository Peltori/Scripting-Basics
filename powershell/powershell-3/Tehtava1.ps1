param(
    [string]$foldername
    )
    
if (Test-Path $foldername -PathType Container) {
    $files = Get-ChildItem -Path $foldername
    Write-Host "The $foldername has $($files.Count) files"}
else
    {Write-Host "Sorry, $foldername does not exist."}