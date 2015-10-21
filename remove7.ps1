$location = "C:\wk\temp\test"
$back = 7
$now = (Get-Date)
$files = Get-ChildItem $location -File -Recurse -Filter *.pdf `
    | where { ($now - $_.LastWriteTime).Days -gt $back }

Write-Host "Total files -> "  $files.Count
$files | % { Write-Host $_.LastWriteTime; $_.Delete() }