#!/bin/sh

# A dwm_bar function to read the battery level and status
# Joe Standring <git@joestandring.com>
# GNU GPLv3

dwm_battery () {
    # Change BAT1 to whatever your battery is identified as. Typically BAT0 or BAT1
    
	CHARGE1=$(cat /sys/class/power_supply/BAT1/capacity)
	CHARGE0=$(cat /sys/class/power_supply/BAT0/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT1/status)


    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        if [ "$STATUS" = "Charging" ]; then
            printf "🔌%s%% %s%% %s" "$CHARGE0" "$CHARGE1" "$STATUS"
        else
            printf "🔋%s%% %s%% %" "$CHARGE0" "$CHARGE1" "$STATUS"
        fi
    else
        printf "BAT %s%% %s%% %s" "$CHARGE0" "$CHARGE1" "$STATUS"
    fi
    printf "%s\n" "$SEP2"
}

dwm_battery

