Get-ChildItem -Filter '*.SND' | ForEach-Object {
    $newName = ($_ -replace '.*_', '')
    Rename-Item $_ -NewName $newName
}
