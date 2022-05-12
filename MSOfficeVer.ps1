foreach ($computer in (Get-Content "c:\psscripts\computers.txt")){
  write-verbose "Working on $computer..." -Verbose
  Invoke-Command -ComputerName "$Computer" -ScriptBlock {
    Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\O365ProPlusRetail* |
    Select-Object DisplayName, DisplayVersion, Publisher
  } | export-csv C:\psscripts\results.csv -Append -NoTypeInformation
}