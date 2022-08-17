#INSTALL EXCHANGEONLINEMANAGEMENT MODULE
Find-Module -Name ExchangeOnlineManagement
Install-Module -Name ExchangeOnlineManagement -Scope AllUsers
Get-Command -Module ExchangeOnlineManagement

Connect-ExchangeOnline -UserPrincipalName "admin email address"

Add-MailboxPermission -Identity 'Mailbox' -User 'Username' -AccessRights FullAccess -InheritanceType All -Automapping $True

Disconnect-ExchangeOnline
