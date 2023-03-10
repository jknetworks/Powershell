Get-EXOMailbox -Filter {EmailAddresses -like "*name*"} | ft -Property DisplayName,RecipientType,Identity,EmailAddresses -AutoSize -Wrap
