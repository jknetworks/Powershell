#RENAME COMPUTER AND WORKGROUP
```powershell
Add-Computer -WorkGroupName "Name"
```
```powershell
Rename-Computer -NewName "Name"
```
```powershell
Restart-Computer -Force
```

#JOIN DOMAIN
```powershell
add-computer –domainname domain.com -Credential domain\administrator -restart –force
```

#PSREMOTE
```powershell
Enable-PSRemoting -Force
```
```powershell
Get-NetFirewallRule | Where DisplayName -like "*Windows Management Instrumentation*" | Set-NetFirewallRule -Enable True -Verbose
```
```powershell
Get-NetFirewallRule | Where DisplayGroup -EQ "Remote Service Management" | Set-NetFirewallRule -Enable True -Verbose
```
```powershell
Get-NetFirewallRule -name *RemoteDesktop* | FT
```
```powershell
Get-NetFirewallRule -Name *RemoteDesktop* | Set-NetFirewallRule -Enabled 'True' 
```

#PING
```powershell
netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol=icmpv4:8,any dir=in action=allow
```
```powershell
netsh advfirewall firewall add rule name="ICMP Allow incoming V6 echo request" protocol=icmpv6:8,any dir=in action=allow
```
#REMOTE EVENT VIEWER
```powershell
netsh advfirewall firewall set rule group="Remote Event Log Management" new enable=yes
```
#REMOTE DESKTOP
```powershell
netsh advfirewall firewall set rule group="remote desktop" new enable=Yes
```
