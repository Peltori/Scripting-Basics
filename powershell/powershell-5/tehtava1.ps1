param(
[string]$filename = 'users.csv'
)

if (Test-Path $filename) {
    Import-Csv $filename | 
    ForEach-Object {
        $shortFname = $_.Firstname.Substring(0,2).ToLower()
        $shortLname = $_.Lastname.Substring(0,4).ToLower()
        Write-Host "Hello my colleague, $($_.Firstname) $($_.Lastname) this is your new account:"
        Write-Host -ForegroundColor Green "$($shortLname + $($shortFname))"
    }
} else {
    Write-Host "Error: File not found."
}