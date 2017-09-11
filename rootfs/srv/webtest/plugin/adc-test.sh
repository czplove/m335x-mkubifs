#!/bin/sh
## wifi hotpot essid must be "ecm-3320", ip address must be 10.0.1.1
adc_init() {
	return 0
}

adc_test() {
	for num in 4 5 6 7
	do
		ret=`cat /sys/bus/iio/devices/iio:device0/in_voltage${num}_raw`
		if [[ $? -ne 0 ]];then
			return 1
		fi

		if [[ $ret -ge 30 ]];then
			return 1
		fi
	done
	return 0
}

adc_exit() {
	return 0
}

main() {
	if [[ $1 = "init" ]]; then
		adc_init || return 1
	elif [[ $1 = "test" ]]; then
		adc_test || return 1
	elif [[ $1 = "exit" ]]; then
		adc_exit || return 1
	fi

	return 0;
}

main "$@" || exit 1 
