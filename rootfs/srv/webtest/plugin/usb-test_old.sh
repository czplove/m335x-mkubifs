#! /bin/sh

#MOUNT_POINT=/media/sda4
#MOUNT_POINT=`find /media -name "sda*"`
for dir in `ls /media/`
do 
	if [[ $dir == sda* -o $dir == sdb* ]];then
		if [[ $MOUNT_POINT == "" ]];then
			MOUNT_POINT=/media/${dir}
		else
			MOUNT_POINT1=/media/${dir}
		fi
	fi
done

dev_init() {
	dd if=/dev/urandom of=${MOUNT_POINT}/image bs=1M count=2
    if [[ $? -ne 0 ]];then 
        return 1
    fi
	md5sum ${MOUNT_POINT}/image | cut -d\  -f1 > ${MOUNT_POINT}/image.md5

	return 0
}

dev_test() {
	cp ${MOUNT_POINT}/image ${MOUNT_POINT}/image_copy && sync
	local image_md5=$(cat ${MOUNT_POINT}/image.md5)
	local image_copy_md5=$(md5sum ${MOUNT_POINT}/image_copy | cut -d\  -f1)
	rm ${MOUNT_POINT}/image_copy

	if [[ ${image_md5} != ${image_copy_md5} ]]; then
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
