date_formatted=$(date "+%a %b %d %H:%M")

battery0_capacity=$(upower --show-info $(upower --enumerate) | grep "BAT0" | grep "energy-full:" | sed 's/%//')
battery1_capacity=$(upower --show-info $(upower --enumerate) | grep "BAT0" | grep "energy-full:" | sed 's/%//')
total_capacity=$(($battery0_capacity + $battery1_capacity))

battery0_remaining=$(upower --show-info $(upower --enumerate) | grep "BAT0" | grep "energy:" | sed 's/%//')
battery1_remaining=$(upower --show-info $(upower --enumerate) | grep "BAT0" | grep "energy:" | sed 's/%//')
total_remaining=$(($battery0_remaining + $battery1_remaining))

battery_percent_remaining=$(($total_remaining / $total_capacity))
