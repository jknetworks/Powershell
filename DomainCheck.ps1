# Check if the computer is joined to a domain or workgroup

# Get computer system information
$compSys = Get-CimInstance Win32_ComputerSystem

if ($compSys.PartOfDomain) {
    Write-Host "This computer is joined to the domain: $($compSys.Domain)" -ForegroundColor Green
} else {
    Write-Host "This computer is part of a workgroup: $($compSys.Workgroup)" -ForegroundColor Yellow
}