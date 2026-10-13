```powershell
New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress 192.168.99.1 -PrefixLength 24
```
```powershell
New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress 192.168.99.2 -PrefixLength 24
```
```powershell
robocopy "C:\Source\Folder" "\\192.168.99.2\TargetFolder" /E /MT:16 /R:1 /W:1 /NP /TEE /LOG:"C:\temp\transfer_log.txt"
```
