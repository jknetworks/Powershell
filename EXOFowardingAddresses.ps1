Get-Mailbox | Where {$null -ne $_.ForwardingSmtpAddress} | FT UserPrincipalName,ForwardingSmtpAddress,DeliverToMailboxAndForward 
