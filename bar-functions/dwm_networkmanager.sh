#!/bin/sh

# A dwm_bar function to show the current network connection/SSID, private IP, and public IP using NetworkManager
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: NetworkManager, curl

dwm_networkmanager () {
    PRIVATE=$(hostname -i | sed 's/ *$//g')

    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        printf "🌐 %s" "$PRIVATE"
    else
        printf "NET %s" "$PRIVATE"
    fi
    printf "%s" "$SEP2"
}

dwm_networkmanager
