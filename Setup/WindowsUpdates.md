# Install PSWindowsUpdate module if not present
# Allow the module to load for this session (avoids "running scripts is disabled" error)
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force
```
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
