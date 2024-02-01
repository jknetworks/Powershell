#INSTALL EXCHANGEONLINEMANAGEMENT MODULE
Find-Module -Name ExchangeOnlineManagement
Install-Module -Name ExchangeOnlineManagement -Scope AllUsers
Get-Command -Module ExchangeOnlineManagement

Connect-ExchangeOnline -UserPrincipalName "admin email address"

Add-MailboxPermission -Identity 'Mailbox' -User 'Username' -AccessRights FullAccess -InheritanceType All -Automapping $True

Remove-MailboxPermission -Identity "Mailbox" -User "Username" -AccessRights FullAccess -InheritanceType All

Disconnect-ExchangeOnline

#PREMISSIONS REPORT
Get-Mailbox -resultsize unlimited | Get-MailboxPermission | Select Identity, User, Deny, AccessRights, IsInherited| Export-Csv -Path "c:\temp\mailboxpermissions.csv" –NoTypeInformation

