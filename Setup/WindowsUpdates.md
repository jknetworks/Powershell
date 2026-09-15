# Install PSWindowsUpdate module if not present
```powershell
Install-PackageProvider -Name NuGet -Force
```
```powershell
Install-Module PSWindowsUpdate -Force
```
```powershell
Import-Module PSWindowsUpdate
```
```powershell
Get-WindowsUpdate
```
```powershell
Install-WindowsUpdate -AcceptAll -AutoReboot
```
