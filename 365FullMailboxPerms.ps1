Connect-ExchangeOnline -UserPrincipalName "admin email address"

Add-MailboxPermission -Identity 'Mailbox' -User 'Username' -AccessRights FullAccess -InheritanceType All -Automapping $True

Disconnect-ExchangeOnline
