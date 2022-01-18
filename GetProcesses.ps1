# PROCESSES

Get-Process | Where-Object {$_.Name -eq "SVCHost" -and $_.PM -gt 5mb} | Sort-Object -Property PM -Descending

Get-WmiObject Win32_Service | Where-Object {$_.ProcessID -eq <SVCHost_ID>}