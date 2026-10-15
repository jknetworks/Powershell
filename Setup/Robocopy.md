```powershell
New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress 192.168.99.1 -PrefixLength 24
```
```powershell
New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress 192.168.99.2 -PrefixLength 24
```
```powershell
robocopy "C:\Source\Folder" "\\192.168.99.2\TargetFolder" /E /MT:16 /R:1 /W:1 /NP /TEE /LOG:"C:\temp\transfer_log.txt"
```
```powershell
Get-NetAdapter | Where-Object { $_.InterfaceDescription -like "*Realtek*" } | Select-Object Name, InterfaceDescription, LinkSpeed, Status
```
```powershell
Get-NetAdapterAdvancedProperty -Name "Ethernet*" | Where-Object { $_.DisplayName -match "Energy|Green|Power" } | Select-Object DisplayName, DisplayValue
```
<details>
<summary>On adapter disable energy savings</summary>  
Energy Efficient Ethernet (EEE) → Disabled
Green Ethernet → Disabled
Power Saving Mode → Disabled
Gigabit Lite (if listed) → Disabled
Auto Disable Gigabit (if listed) → Disabled
Idle Power Saving (if present) → Disabled
</details>
