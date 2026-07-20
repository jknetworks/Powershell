#RENAME COMPUTER AND WORKGROUP
Add-Computer -WorkGroupName "Name"
Rename-Computer -NewName "Name"
Restart-Computer -Force


#JOIN DOMAIN
add-computer –domainname domain.com -Credential domain\administrator -restart –force


#PSREMOTE
Enable-PSRemoting -Force

Get-NetFirewallRule | Where DisplayName -like "*Windows Management Instrumentation*" | Set-NetFirewallRule -Enable True -Verbose
Get-NetFirewallRule | Where DisplayGroup -EQ "Remote Service Management" | Set-NetFirewallRule -Enable True -Verbose

Get-NetFirewallRule -name *RemoteDesktop* | FT
Get-NetFirewallRule -Name *RemoteDesktop* | Set-NetFirewallRule -Enabled 'True' 


#PING
netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol=icmpv4:8,any dir=in action=allow
netsh advfirewall firewall add rule name="ICMP Allow incoming V6 echo request" protocol=icmpv6:8,any dir=in action=allow

#REMOTE EVENT VIEWER
netsh advfirewall firewall set rule group="Remote Event Log Management" new enable=yes

#REMOTE DESKTOP
netsh advfirewall firewall set rule group="remote desktop" new enable=Yes

