function Get-FiluInfo {
    Get-ChildItem $HOME |
    Where { $_.PsIsContainer -eq $false }|
    Select-Object Name, Length
}