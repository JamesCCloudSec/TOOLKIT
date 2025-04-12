# set-firewall-rules.ps1
New-NetFirewallRule -DisplayName "Block Inbound LAN" -Direction Inbound -RemoteAddress 192.168.0.0/16,10.0.0.0/8,172.16.0.0/12 -Action Block -Profile Any
New-NetFirewallRule -DisplayName "Allow Router" -Direction Outbound -RemoteAddress 192.168.1.1 -Action Allow -Profile Any
