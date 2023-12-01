param(
[string]$filename = 'urls.txt'
)

if (Test-Path $filename) {
    $content = Get-Content $filename
    foreach ($url in $content) { 
        Start-Process -FilePath Brave -ArgumentList $url
        }
} else {
    Write-Host "Error: File not found."
}