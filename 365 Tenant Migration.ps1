************** IMPERSONATION *****************

Set-ExecutionPolicy Unrestricted
$LiveCred = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid -Credential $LiveCred -Authentication Basic -AllowRedirection
Import-PSSession $Session
Enable-OrganizationCustomization
New-ManagementRoleAssignment -Role "ApplicationImpersonation" -User admin@<ORG>.onmicrosoft.com

**********************************************

******** REMOVE FEDERATION ***********

Import-module msonline
Connect-Msolservice
Get-MsolDomain
Set-MsolDomainAuthentication -DomainName "<DomainName>" -Authentication Managed

**********************************************

******** UPDATE USERS EMAIL ALIAS ************

### Create CSV with Headers of Users AlaisEmailaddress
### Where Users=current primary SMTP for User

$csv = Import-Csv 'C:\Code\emailalias'
foreach ($line in $csv)
{
$SMTP ="SMTP:"+$line.AliasEmailaddress
Set-Mailbox -Identity $line.User -EmailAddresses $SMTP
} 

***********************************************

*******	DELETE EMAIL ADDRESSES ****************

Remove-MsolUser -UserPrincipalName “<user@domain.com>” -Force
Remove-MsolUser -DomainName “<domain.com>” | Remove-MsolUser -Force
Get-MsolUser -ReturnDeletedUsers | Remove-MsolUser -RemoveFromRecycleBin -Force

**********************************************

******* REMOVE DOMAIN FROM OLD TENANT ********

Remove-MSolDomain -DomainName “<domain.com>” -Force

**********************************************


**** CHANGE USER DOMAIN ON NEW 365 TENANT ****

$OldDomain = “<domain>.onmicrosoft.com”
$NewDomain = “<domain.com>”
Import-module MSonline
Connect-MsolService
$user=Get-MsolUser -domain $OldDomain | where {$_.isLicensed -eq $true}
$users | Foreach-Object{
$user = $_
$UserName = ($user.UserPrincipalName -split “a”)[0]
$UPN = $UserName+”@”+ $NewDomain
Set-MsolUserPrincipalName -UserPrincipalName $user.UserPrincipalName -NewUserPrincipalName $UPN
}

***********************************************