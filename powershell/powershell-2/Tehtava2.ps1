$a = Read-Host "Give a folder to search please"
$b = $a | Get-ChildItem
Write-Host $b.Count "Files found at" $a