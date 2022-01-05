#CREATE SYSTEM RESTORE CHECKPOINT

Get-ComputerRestorePoint | Format-List

Checkpoint-Computer -description "Printer Issues" -restorepointtype "Modify_Settings"

Get-ComputerRestorePoint


#SPOOLER SERVICE

Get-Service -Name Spooler

Stop-Service -Name Spooler


#IMPORT PRINTER REGISTRY FIX

cd \Folder\WinUpdateFix

reg import .\WinUpPrintFix.reg

Start-Service -Name Spooler