param(
[string]$filename = 'urls.txt'
)
try {
    if (Test-Path $filename) {
        $content = Get-Content $filename
        foreach ($url in $content) { 
            Start-Process -FilePath Brave -ArgumentList $url
        }
    } else {
        throw "Error: File not found."
    }
}
catch {
    Write-Host "$_"
}