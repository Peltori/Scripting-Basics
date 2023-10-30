$application = Get-AppxPackage
$appCount = $application.Count
Write-Host "You got $appcount applications in PowerShell"