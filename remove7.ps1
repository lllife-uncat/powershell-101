$location = "C:\wk\test"
$back = 7
$now = Get-Date
$files = Get-ChildItem $location -File -Recurse -Filter "*.pdf" `
    | where { ( $now - $_.CreationTime).TotalDays -gt $back }

Write-Host "Total files -> "  $files.Count
$files | % { Write-Host $_.FullName; $_.Delete() }