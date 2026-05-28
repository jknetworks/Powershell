@echo off
powershell -NoProfile -ExecutionPolicy Bypass -Command "$cs=Get-CimInstance Win32_ComputerSystem;$ds=dsregcmd /status;$hn=$env:COMPUTERNAME;if($ds -match 'AzureAdJoined\s*:\s*YES'){'Hostname: '+$hn+' | AzureAD Joined - '+(($ds | Select-String 'TenantName').ToString().Split(':')[1].Trim())}elseif($cs.PartOfDomain){'Hostname: '+$hn+' | Active Directory Joined - '+$cs.Domain}else{'Hostname: '+$hn+' | Workgroup - '+$cs.Workgroup}"

pause
