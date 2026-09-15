# Check Script Policy
```powershell
Get-ExecutionPolicy
```

# Set Script Policy
```powershell
Set-ExecutionPolicy Unrestricted
```
```powershell
Set-ExecutionPolicy Restricted
```

# Prompt for username
```powershell
$Username = Read-Host "Enter the new local username"
```

# Prompt for password securely
```powershell
$Password = Read-Host "Enter the password" -AsSecureString
```

# Create the local user
```powershell
New-LocalUser `
    -Name $Username `
    -Password $Password `
    -FullName $Username `
    -Description "Local administrator account"
```

# Add user to local Administrators group
```powershell
Add-LocalGroupMember `
    -Group "Administrators" `
    -Member $Username
```

# Optional: Set password to never expire
```powershell
Set-LocalUser `
    -Name $Username `
    -PasswordNeverExpires $true
```
```powershell
Write-Host "Local administrator account '$Username' created successfully."
```
# Check Administrators Group
```powershell
Get-LocalGroupMember -Group "Administrators"
```
