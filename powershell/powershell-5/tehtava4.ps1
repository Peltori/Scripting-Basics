param(
[string]$filename = 'localUsers.csv'
)

try {
    $users = Get-LocalUser | Select-Object -Property Name, Fullname, SID, LastLogon | Export-Csv -Path $filename -Delimiter ';'
}
catch {
    Write-Host "$_"
}
notepad $filename