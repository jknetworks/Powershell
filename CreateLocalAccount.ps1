# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localuser?view=powershell-5.1 

# CREATE NEW LOCAL USER

$Password = Read-Host -AsSecureString
New-LocalUser "User" -Password $Password -FullName "First Last" -Description "Description of this account." -PasswordNeverExpires