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
dir C:\Windows | where {$_.Length -lt 5000}
Get-Process | where {$_.Responding -eq "true"}
"True" -eq "true"
"True" -ceq "true"
Get-Process | where {$_.Company -like "*micr*"}
Get-Process | where {$_.Handles -gt 500 -and $_.PM -ne 0}
Get-Process | where {$_.Handles -gt 100 -and -not $_.Company -eq "Microsoft Corporation"}
"Use + to and tow" + " " + "string together."
"abc" * 4
Write-Output "Stirng in quotes"
Write-Output 'String in quotes'
"String in quotes"
Out-Host -InputObject "String in quotes."
Write-Output "String 'in' quotes"
Write-Output 'String "in" quotes'
Write-Output "String "in" quotes"
Write-Output 'String 'in' quotes'
Write-Output "123"
(Write-Output "123").GetType()
(Write-Output 123).GetType()
(Write-Output 123output).GetType()
Set-Location C:\
Set-Location Z:\Source\powershell\powershell-101
Write-Output ("`n`tText includes" + "`n`t escaped")
dir variable:|  sort name
dir $PSHOME -Filter *.dll
dir env: | sort name
$env:windir
$env:HOMEPATH
$var1 = "one two"
New-Variable var1 "one two"
New-Variable var2 "one two" -Option ReadOnly
$var2 = "three"
Set-Variable var2 "three"
Set-Variable var2 "three" -Force
$var1 = $null
Clear-Variable var1
Clear-Variable var2 -Force
Remove-Variable var2 -Force
$var1 = "one two"
$var1
$var1.GetType()
$svc = "eventlog"
Write-Output "The service is $svc"
Write-Output "The value of `$svc is $svc"
Get-Service "$svc"
Get-PSDrive | sort Provider, Name
Get-PSDrive Function | Format-List
Get-PSDrive -PSProvider Registry
cd Env:\
dir | where {$_.Name -like "*path*"}
dir HKCU:\
cd HKCU:\SOFTWARE\Microsoft\Office
dir HKCU:\SOFTWARE\Microsoft\Office
Get-ItemProperty HKLM:\SOFTWARE\Microsoft\ASP.NET
New-PSDrive -Name ps -PSProvider FileSystem -Root $PSHOME
cd ps:\
