#!/bin/sh

socket_net0_init()
{
    return 0
}
socket_net0_exit() {
    return 0
}

socket_net0_test() {
	ping 192.168.1.136 -c 1 > /dev/null
	if [[ $? -ne 0 ]];then
		return 1
	fi
	return 0
}

main() {
	if [[ $1 = "init" ]]; then
	    socket_net0_init	|| return 1
	elif [[ $1 = "test" ]]; then
	    socket_net0_test	|| return 1
	elif [[ $1 = "exit" ]]; then
	    socket_net0_exit		|| return 1
	fi

	return 0
}

main "$@" || exit 1 
