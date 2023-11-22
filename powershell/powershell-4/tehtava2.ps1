function Get-FiluInfo2 {
    Param($extension = 'txt')
    $path = Join-Path -Path $HOME -ChildPath "*.$extension"
    Get-ChildItem $path |
    Where { $_.PsIsContainer -eq $false } |
    Select-Object Name, Length, LastWriteTime
}