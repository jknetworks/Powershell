$Password = ConvertTo-SecureString "P@ssw0rd123!" -AsPlainText -Force
New-LocalUser -Name "LocalAdmin" -Password $Password -FullName "Local Administrator" -Description "Local admin account"
Add-LocalGroupMember -Group "Administrators" -Member "LocalAdmin"
Set-LocalUser -Name "LocalAdmin" -PasswordNeverExpires $true
