# Prompt for username
$Username = Read-Host "Enter the new local username"

# Prompt for password securely
$Password = Read-Host "Enter the password" -AsSecureString

# Create the local user
New-LocalUser `
    -Name $Username `
    -Password $Password `
    -FullName $Username `
    -Description "Local administrator account"

# Add user to local Administrators group
Add-LocalGroupMember `
    -Group "Administrators" `
    -Member $Username

# Optional: Set password to never expire
Set-LocalUser `
    -Name $Username `
    -PasswordNeverExpires $true

Write-Host "Local administrator account '$Username' created successfully."
