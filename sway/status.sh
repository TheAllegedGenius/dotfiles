date_formatted=$(date "+%a %b %d %H:%M")

start_time=$(date +%s)
start_cpu=$(ps -p $$ -o %cpu | awk 'NR==2')

battery0=$(upower --show-info /org/freedesktop/UPower/devices/battery_BAT0)
battery1=$(upower --show-info /org/freedesktop/UPower/devices/battery_BAT1)

battery0_capacity=$(echo "$battery0" | awk 'NR==16 {print $2}') 
battery1_capacity=$(echo "$battery1" | awk 'NR==16 {print $2}') 

#battery0_capacity=$(echo "$battery0" | grep "energy-full:" | awk '{print $2}') 
#battery1_capacity=$(echo "$battery1" | grep "energy-full:" | awk '{print $2}') 
total_capacity=$((echo "$battery0_capacity + $battery1_capacity" | bc))

battery0_remaining=$(echo "$battery0" | awk 'NR==14 {print $2}') 
battery1_remaining=$(echo "$battery1" | awk 'NR==14 {print $2}') 

#battery0_capacity=$(echo "$battery0" | grep "energy:" | awk '{print $2}') 
#battery1_capacity=$(echo "$battery1" | grep "energy:" | awk '{print $2}') 
total_remaining=$((echo "$battery0_remaining + $battery1_remaining" | bc))

battery_percent_remaining=$(echo "scale=2; $total_remaining / $total_capacity * 100" | bc)

end_cpu=$(ps -p $$ -o %cpu | awk 'NR==2')
end_time=$(date +%s)

time=$((end-time - start-time))
cpu=$((end_cpu - start_cpu))
echo "Elapsed time: $time seconds"
echo "CPU usage: $cpu%"
