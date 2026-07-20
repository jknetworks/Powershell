<# 
.SYNOPSIS
Retrieves mailbox + archive sizes for all users and exports to CSV.

.HOW TO RUN
1. Save this script as:  GetAllUsersMailboxSize.ps1
2. Connect to Exchange Online PowerShell:
       Connect-ExchangeOnline
3. Run the script:
       .\GetAllusersMailboxSize.ps1 -CSVPath "C:\Reports\MailboxSizes.csv"

.PARAMETER CSVPath
The full path and filename for the CSV export.
If not provided, it defaults to ".\MailboxSizes.csv".
#>

param(
    [string]$CSVPath = ".\MailboxSizes.csv"
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

# Get all user mailboxes
$mailboxes = Get-Mailbox -RecipientTypeDetails UserMailbox -ResultSize Unlimited

$results = foreach ($mbx in $mailboxes) {

    $primaryStats = Get-MailboxStatistics -Identity $mbx.PrimarySmtpAddress

    $archiveStats = Get-MailboxStatistics -Identity $mbx.PrimarySmtpAddress -Archive -ErrorAction SilentlyContinue

    # Extract byte values
    $primaryBytes = Convert-ToBytes $primaryStats.TotalItemSize.ToString()
    $archiveBytes = if ($archiveStats) { Convert-ToBytes $archiveStats.TotalItemSize.ToString() } else { 0 }

    $totalBytes = $primaryBytes + $archiveBytes

    # Output object
    [PSCustomObject]@{
        DisplayName        = $mbx.DisplayName
        UserPrincipalName  = $mbx.UserPrincipalName
        PrimaryMailboxSize = $primaryStats.TotalItemSize.ToString()
        ArchiveMailboxSize = if ($archiveStats) { $archiveStats.TotalItemSize.ToString() } else { "No Archive" }
        TotalSizeGB        = "{0:N2}" -f ($totalBytes / 1GB)
    }
}

# Export to CSV
$results | Export-Csv -Path $CSVPath -NoTypeInformation -Encoding UTF8

Write-Host "Completed. Results saved to: $CSVPath"
