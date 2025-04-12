Get-PnpDevice -Class Bluetooth | Where-Object { $_.Status -ne "OK" } | ForEach-Object {
    Enable-PnpDevice -InstanceId $_.InstanceId -Confirm:$false
    Write-Host "Enabled: $($_.Name)"
}
pause
