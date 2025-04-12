# Blocks LAN connections through Windows Firewall.
**Useful for travel or public and guest Wi-Fi.**

I recommend against public or guest Wi-Fi because it is dangerous, use a hotspot instead - it's safer.

Directions:
Right click DISABLE_LAN_LAUNCHER.bat, click "Run as Administrator"

To verify:
1. Press Windows Key
2. Search "Windows Defender Firewall with Advanced Security
3. Check Inbound Rules for "Block Inbound LAN"
4. Check Outbound Rules for "Allow Router"

To undo changes:
Right click ENABLE_LAN_LAUNCHER.bat, click "Run as Administrator"
