#!/usr/bin/bash
date_formatted=$(date "+%a %b %d %H:%M")
function battery_status {
    local battery0="/sys/class/power_supply/BAT0"
    local battery1="/sys/class/power_supply/BAT1"

    local battery0_capacity=$(cat $battery0/energy_full)
    local battery0_remaining=$(cat $battery0/energy_now)
    if [ -d $battery1 ]; then
        local battery1_capacity=$(cat $battery1/energy_full)
        local battery1_remaining=$(cat $battery1/energy_now)
        local total_capacity=$(echo "$battery0_capacity + $battery1_capacity" | bc)
        local total_remaining=$(echo "$battery0_remaining + $battery1_remaining" | bc)
        local battery0_status=$(cat $battery0/status)
        local battery1_status=$(cat $battery1/status)
        if [[ $battery0_status == "Full" && $battery1_status == "Full" ]]; then
            battery_status="Full"
        elif [[ $battery0_status == "Charging" || $battery1_status == "Charging" ]]; then
            battery_status="Charging"
        else
            battery_status="Int: $battery0_status Ext: $battery1_status"
        fi
    else
        local total_capacity=$battery0_capacity
        local total_remaining=$battery0_remaining
        battery_status=$(cat $battery0/status)
    fi

    local battery_percent_remaining=$(echo "scale=4; ($total_remaining / $total_capacity) * 100" | bc)
    battery_percentage=$(echo "${battery_percent_remaining%00}%")
}
battery_status
echo "$battery_percentage ($battery_status) $date_formatted"
