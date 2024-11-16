backdoors=("nc.traditional" "socat" "ncat" "telnet" "nc" "nc6" "tcpdump" "nc64")

for item in "${backdoors[@]}"; do
	sed -i "/$item/d" /etc/crontab
	sudo pkill -f $item
	sudo rm $(which $item)
	echo "attempted to remove $item"
done