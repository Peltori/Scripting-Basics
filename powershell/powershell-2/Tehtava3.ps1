param (
    [string]$a = "",
    [string]$b = "",
    [string]$c = ""
    )
$strings = $a, $b, $c
Write-Host "Parameters are" $strings
$sortedStrings = $strings | Sort-Object Length
Write-Host "Ordered words are" $sortedStrings