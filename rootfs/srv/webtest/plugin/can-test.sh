#!/bin/sh

socket_can_init()
{
    ifconfig can0 down
    /sbin/ip link set can0 type can bitrate 1000000 restart-ms 1000
    ifconfig can0 up

    ifconfig can1 down
    /sbin/ip link set can1 type can bitrate 1000000 restart-ms 1000
    ifconfig can1 up
    return 0
}
socket_can_exit() {
    ifconfig can0 down
    ifconfig can1 down
    return 0
}

main() {
	if [[ $1 = "init" ]]; then
	    socket_can_init	|| return 1
	elif [[ $1 = "exit" ]]; then
	    socket_can_exit	|| return 1
	fi

	return 0
}

main "$@" || exit 1 
