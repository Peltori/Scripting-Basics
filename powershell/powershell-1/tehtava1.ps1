$a = Get-Date
$date = $a.ToShortDateString()
Write-Host "Logged in user is $env:USERNAME and current date is $date"