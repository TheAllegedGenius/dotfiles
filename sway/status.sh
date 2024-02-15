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
        if [[ $battery0_status == "Full" ]]; then
            battery0_status="🔋"
        elif [[ $battery0_status == "Charging" ]]; then
            battery0_status="🔌"
        else
            battery0_status="🪫"
        fi
        if [[ $battery1_status == "Full" ]]; then
            battery1_status="🔋"
        elif [[ $battery1_status == "Charging" ]]; then
            battery1_status="🔌"
        else
            battery1_status="🪫"
        fi
        battery_status="I$battery0_status E$battery1_status"
    else
        local total_capacity=$battery0_capacity
        local total_remaining=$battery0_remaining
        battery0_status=$(cat $battery0/status)
        if [[ $battery0_status == "Full" ]]; then
            battery_status="🔋"
        elif [[ $battery0_status == "Charging" ]]; then
            battery_status="🔌"
        else
            battery_status="🪫"
        fi
    fi

    local battery_percent_remaining=$(echo "scale=4; ($total_remaining / $total_capacity) * 100" | bc)
    if [ $battery_percent_remaining < 80.00 ]; then
        battery_status="⚡️"
    fi
    battery_percentage=$(echo "${battery_percent_remaining%00}%")
}
current_volume=$(pamixer --get-volume-human)
volume_is_muted=$(pamixer --get-mute)
if [ $current_volume = "true" ]
then
        audio_active="🔇"
    else
        audio_active="🔊"
fi

battery_status
echo "$audio_active $current_volume | $battery_percentage $battery_status | 🕘 $date_formatted"
