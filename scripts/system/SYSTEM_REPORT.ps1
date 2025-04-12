# SYSTEM_REPORT.ps1
# Generates a system summary for auditing

$timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm"
$desktopPath = [System.Environment]::GetFolderPath("Desktop")
$output = "$desktopPath\SystemReport_$timestamp.txt"

# Ensure the folder exists
if (-not (Test-Path $desktopPath)) {
    New-Item -ItemType Directory -Path $desktopPath | Out-Null
}

Add-Content $output "=== System Report Generated on $timestamp ==="

Add-Content $output ""

Add-Content $output ">> OS Information:"
Get-ComputerInfo | Select-Object OSName, OSArchitecture, WindowsVersion, CsName | Out-String | Add-Content $output
Add-Content $output ""

Add-Content $output ">> BitLocker Status:"
manage-bde -status C: | Out-String | Add-Content $output
Add-Content $output ""

Add-Content $output ">> Firewall Profile Settings:"
Get-NetFirewallProfile | Format-List Name, Enabled, DefaultInboundAction, DefaultOutboundAction | Out-String | Add-Content $output
Add-Content $output ""

Add-Content $output ">> Installed Applications:"
Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* |
Select-Object DisplayName, DisplayVersion, Publisher | Sort-Object DisplayName |
Out-String | Add-Content $output

Add-Content $output ""
Add-Content $output ">> Firewall Rules:"
Add-Content $output "Skipped: Too many inconsistent system entries to filter cleanly."
Add-Content $output "Consider manual review of Get-NetFirewallRule for full visibility."




Add-Content $output ""
Add-Content $output "=== Report Complete ==="


Write-Host "✅ System report created: $output"

# Add persistent log entry
$logPath = "$env:USERPROFILE\Documents\SecurityTools\logs"
if (-not (Test-Path $logPath)) {
    New-Item -ItemType Directory -Path $logPath -Force | Out-Null
}
Add-Content "$logPath\system_audit_log.txt" "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') - System report saved to: $output"

pause
