Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False

add-windowsfeature web-server, web-mgmt-tools

