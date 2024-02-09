#! /usr/bin/bash
date_formatted=$(date "+%a %b %d %H:%M")
method2 () {
    battery0="/sys/class/power_supply/BAT0"
    battery1="/sys/class/power_supply/BAT1"

    battery0_capacity=$(cat $battery0/energy_full)
    battery0_remaining=$(cat $battery0/energy_now)
    if [ -d $battery1 ]; then
        battery1_capacity=$(cat $battery1/energy_full)
        battery1_remaining=$(cat $battery1/energy_now)
        total_capacity=$(echo "$battery0_capacity + $battery1_capacity" | bc)
        total_remaining=$(echo "$battery0_remaining + $battery1_remaining" | bc)
    else
        total_capacity=$battery0_capacity
        total_remaining=$battery0_remaining
    fi

    battery_percent_remaining=$(echo "scale=4; ($total_remaining / $total_capacity) * 100" | bc)

    echo "${battery_percent_remaining%00}%"
}

method3 () {
    battery0="/sys/class/power_supply/BAT0"
    battery1="/sys/class/power_supply/BAT1"

    battery0_capacity=$(cat $battery0/energy_full)
    battery0_remaining=$(cat $battery0/energy_now)
    if [ -d $battery1 ]; then
        battery1_capacity=$(cat $battery1/energy_full)
        battery1_remaining=$(cat $battery1/energy_now)
        total_capacity=$(echo "$battery0_capacity + $battery1_capacity" | bc)
        total_remaining=$(echo "$battery0_remaining + $battery1_remaining" | bc)
        battery_percent_remaining=$(echo "scale=4; ($total_remaining / $total_capacity) * 100" | bc)
    else
        total_capacity=$battery0_capacity
        total_remaining=$battery0_remaining
        battery_percent_remaining=$(echo "scale=4; ($battery0_remaining / $battery0_capacity) * 100" | bc)
    fi

    echo "${battery_percent_remaining%00}%"
}

times5 "method1"
times5 "method2"
times5 "method3"
