# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localuser?view=powershell-5.1 

# CREATE NEW LOCAL USER

$Password = Read-Host -AsSecureString

$params = @{
    Name        = 'localAdmin'
    Password    = $Password
    FullName    = 'Local Admin'
    Description = 'This PC Local Administrator.'
}
New-LocalUser @params

# PASSWORD EXPIRATION

Set-LocalUser -Name "User" -PasswordNeverExpires 

# Local Users and Groups Manager
lusrmgr.msc

# COMMAND PROMPT
net user account_name  # CHECK POLICY
wmic useraccount where "Name='account_name'" set PasswordExpires=false  #SET POLICY

