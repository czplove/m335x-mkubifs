#!/bin/sh
## wifi hotpot essid must be "ecm-3320", ip address must be 10.0.1.1
dev_init() {
	/opt/wifi_connect.sh 
	return 0
}

dev_test() {
    ping -I wlan0 192.168.6.165 -c 1 > /dev/null
    if [[ $? -ne 0 ]];then
        return 1
    fi 
	return 0
}

dev_exit() {
	pgrep wpa_supplicant | xargs kill -s 9
	return 0
}

main() {
	if [[ $1 = "init" ]]; then
		dev_init || return 1
	elif [[ $1 = "test" ]]; then
		dev_test || return 1
	elif [[ $1 = "exit" ]]; then
		dev_exit || return 1
	fi

	return 0;
}

main "$@" || exit 1 
