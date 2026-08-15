```powershell
Get-Disk | ConvertTo-Html -Title 'Disk Information' | Set-Content E:\DiskReport.htm 
```
```powershell
Get-Disk | Export-Csv -NoTypeInformation -Path E:\DiskReport.csv
```
####

```powershell
$Disks = Get-Disk
```
```powershell
$Disks | ConvertTo-Html -Title 'Disk Information' | Set-Content E:\DiskReport.htm
```
```powershell
$Disks | Export-Csv -NoTypeInformation -Path E:\DiskReport.csv
```
