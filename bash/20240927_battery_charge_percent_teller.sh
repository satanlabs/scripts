# WHAT :: MAC battery percent value saver #
# INSTRUCTIONS : create a folder `MAC_BATTERY_PERCENT_DATA` where you will run this bash-script

function putBatterPercentInFile() {
	batteryPercentage="$(system_profiler SPPowerDataType | grep "State of Charge" | awk '{print $5}')"

	fileName="./MAC_BATTERY_PERCENT_DATA/$(date +%F)_MAC_BATTERY_PERCENT_DATA.txt"
	# echo "DEBUG :: fileName = $fileName"

	csvRowData="$(date), $batteryPercentage"
	# echo "DEBUG :: csvRowData = $csvRowData"

	echo "$csvRowData" >> "$fileName"
	echo "$(date) : DEBUG :: added new data to CSV"
	# echo "DEBUG :: ============================================="
}

while true
do
	putBatterPercentInFile; 
	sleep 300; 
done


