Get-Help -name Get-Content
Get-Help -name Get-Content -Full
Get-Content 101.ps1
Get-Help about*
Get-Help about_flow_control
Get-Alias | Where-Object { $_.Definition -match "Get-ChildItem" }
Get-ChildItem C:\Windows
dir C:\Windows
ls C:\Windows
gci C:\Windows
Set-Alias jw Get-ChildItem
jw C:\Windows
Get-Service | Where-Object {$_.Status -eq "running"}
Get-Service | where {$_.Status -eq "running"} | select DisplayName
Get-Process powershell
Get-Process powershell | Format-List
Get-Process powershell | Format-List | Out-File ps.txt
Get-Process powershell | Format-List | Out-file ps.txt -Append
dir C:\Windows | where {$_.Length -gt 5000 -and $_.Extension -eq ".exe" } | sort -Property length -Descending
