```powershell
# Allow the module to load for this session (avoids "running scripts is disabled" error)
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force

# Install PSWindowsUpdate module if not present
Install-PackageProvider -Name NuGet -Force
Install-Module PSWindowsUpdate -Force
Import-Module PSWindowsUpdate

Get-WindowsUpdate
Install-WindowsUpdate -AcceptAll -AutoReboot
```

Repeat `Install-WindowsUpdate` after each reboot until `Get-WindowsUpdate` returns nothing — first pass often only surfaces the cumulative update needed before others will show.
