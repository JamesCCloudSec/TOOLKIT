# undo-firewall-rules.ps1
Write-Output "Removing custom firewall rules..."

# Remove specific custom rules
$rulesToRemove = @(
    "Block Inbound LAN",
    "Allow Router"
)

foreach ($ruleName in $rulesToRemove) {
    if (Get-NetFirewallRule -DisplayName $ruleName -ErrorAction SilentlyContinue) {
        Remove-NetFirewallRule -DisplayName $ruleName
        Write-Output "Removed rule: $ruleName"
    } else {
        Write-Output "Rule not found: $ruleName"
    }
}

Write-Output "Firewall rule cleanup complete."
