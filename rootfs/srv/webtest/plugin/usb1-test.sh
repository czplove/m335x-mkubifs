#! /bin/sh

#MOUNT_POINT=/media/sda4
#MOUNT_POINT=`find /media -name "sda*"`

ret=0
tmp=0
usb1file=0
filelist=`ls /sys/class/usb_device/`                             
for dir in $filelist                              
do                                                
	usb1file=${dir:6}
	tmp=${usb1file:0:1}
	if [[ $tmp -eq 2 ]];then
		tmp=${usb1file:2:1}
		if [[ $tmp -ne 1 ]];then
			ret=1
		fi
	fi
done

dev_init() {
	return 0
}

dev_test() {
	if [[ $ret -eq 0 ]];then
		echo "usb test error!"
		return 1
	fi
	return 0
}

dev_exit() {
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
