param (
  [string]$ip = '192.168.1.1',
  [int]$tries = 1
  )

Write-Host "I will try to ping" $ip $tries "time, is this okay?"
$perm = Read-Host "[Y/n]"

if ($perm -like "Y") {
    for ($i = 0; $i -lt $tries; $i++) {
        Write-Output("try " + ($i +1) + " to ping: " + $ip)
    }
} else {
    Exit
}