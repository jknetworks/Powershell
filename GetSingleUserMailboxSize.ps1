<#
To Run
.\GetSingleUserMailbox.ps1 -UserPrincipalName "user@domain.com"
#>


param(
    [Parameter(Mandatory = $true)]
    [string]$UserPrincipalName
)

function Convert-ToBytes {
    param([string]$SizeString)

    # Example input: "49.22 GB (52,861,140,992 bytes)"
    if ($SizeString -match '\(([\d,]+) bytes\)') {
        return [int64]($Matches[1] -replace ',','')
    }
    else {
        return 0
    }
}

# Primary mailbox stats
$mailboxStats = Get-MailboxStatistics -Identity $UserPrincipalName

# Archive mailbox stats (may not exist)
$archiveStats = Get-MailboxStatistics -Identity $UserPrincipalName -Archive -ErrorAction SilentlyContinue

# Extract byte values
$primaryBytes = Convert-ToBytes $mailboxStats.TotalItemSize.ToString()
$archiveBytes = if ($archiveStats) { Convert-ToBytes $archiveStats.TotalItemSize.ToString() } else { 0 }

$totalBytes = $primaryBytes + $archiveBytes

# Build result object
$result = [PSCustomObject]@{
    User               = $UserPrincipalName
    PrimaryMailboxSize = $mailboxStats.TotalItemSize.ToString()
    ArchiveMailboxSize = if ($archiveStats) { $archiveStats.TotalItemSize.ToString() } else { "No Archive" }
    TotalCombinedSize  = ("{0:N2} GB" -f ($totalBytes / 1GB))
}

# Output
$result
