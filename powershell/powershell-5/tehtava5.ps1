param(
[string]$filename = 'localUsers.csv'
)

function Add-MyEvent {
    param (
        [string]$Type,
        [string]$Message
    )
    
    $source = "MyPowerShell"
    Write-EventLog -LogName Application -Source $source -EntryType $Type -EventId 1 -Message $Message
}

try {
    $users = Get-LocalUser | Select-Object -Property Name, Fullname, SID, LastLogon | Export-Csv -Path $filename -Delimiter ';'
    Add-MyEvent -Type "Information" -Message "CSV file creation successfull: $filename"
}
catch {
    Write-Host "$_"
    Add-MyEvent -Type "Error" -Message "Failed to create CSV file: $filename"
}
notepad $filename