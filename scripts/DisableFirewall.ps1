Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
Set-NetConnectionProfile -InterfaceIndex 13 -NetworkCategory Private
 