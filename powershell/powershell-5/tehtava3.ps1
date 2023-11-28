param(
[string]$filename = 'users.csv'
)

$createdUsers = @()

try {
    if (Test-Path $filename) {
        $users = Import-Csv $filename
        foreach ($user in $users) {
            $shortFname = $user.Firstname.Substring(0,2).ToLower()
            $shortLname = $user.Lastname.Substring(0,4).ToLower()
            $confirm = Read-Host "New local account will be created for, $($user.Firstname) $($user.Lastname) [Yes]/No"
            if ($confirm -eq "Yes" -or $confirm -eq "Y" -or $confirm -eq "y" -or $confirm -eq "yes") {
                $newUser = New-LocalUser -Name ($shortLname + $shortFname) -NoPassword
                $createdUsers += $newUser
            } else {
                Write-Host "User $($shortLname + $shortRname) not created"
                continue
            }
        }
    } else {
        throw "Error: File not found."
    }
}
catch {
    Write-Host "$_"
}
Get-LocalUser -Name $createdUsers