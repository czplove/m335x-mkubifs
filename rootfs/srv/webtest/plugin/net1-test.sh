#!/bin/sh

socket_net1_init()
{
    return 0
}
socket_net1_exit() {
    return 0
}

socket_net1_test() {
	ping 192.168.2.136 -c 1 > /dev/null
	if [[ $? -ne 0 ]];then
		return 1
	fi
	return 0
}

main() {
	if [[ $1 = "init" ]]; then
	    socket_net1_init	|| return 1
	elif [[ $1 = "test" ]]; then
	    socket_net1_test	|| return 1
	elif [[ $1 = "exit" ]]; then
	    socket_net1_exit	|| return 1
	fi

	return 0
}

main "$@" || exit 1 
