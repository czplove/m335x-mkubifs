#!/bin/sh
## wifi hotpot essid must be "ecm-3320", ip address must be 10.0.1.1
otg_init() {
	return 0
}

otg_test() {
	ret=`cat /sys/class/gpio/gpio117/value`
	if [ $ret -eq 0 ];then
		return 1
	fi
	return 0
}

otg_exit() {
	return 0
}

main() {
	if [[ $1 = "init" ]]; then
		otg_init || return 1
	elif [[ $1 = "test" ]]; then
		otg_test || return 1
	elif [[ $1 = "exit" ]]; then
		otg_exit || return 1
	fi

	return 0;
}

main "$@" || exit 1 
