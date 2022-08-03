#
# Get Uptime
#
$computername = "computername"
 
$os = gwmi Win32_OperatingSystem -computerName $computername
$boottime = $OS.converttodatetime($OS.LastBootUpTime)
$uptime = New-TimeSpan (get-date $boottime)
  
$uptime_days = [int]$uptime.days
  
write-host "LAST BOOT TIME =  " $boottime
write-host "UPTIME (DAYS) =  " $uptime_days