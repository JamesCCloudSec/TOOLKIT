Get-PnpDevice -Class Bluetooth | Where-Object { $_.Status -eq "OK" } | ForEach-Object {
    Disable-PnpDevice -InstanceId $_.InstanceId -Confirm:$false
    Write-Host "Disabled: $($_.Name)"
}
pause
