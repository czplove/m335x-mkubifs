#! /bin/sh

MOUNT_POINT=/tmp/cf
DEV_NAME=/dev/sda1
dev_init() {
    insmod pata_samsung_cf.ko
	return 0
}

dev_test() {
    if [[ ! -e /dev/sda1 ]];then
        DEV_NAME=/dev/sdb1
    fi
	if [[ ! -d ${MOUNT_POINT} ]]; then
		mkdir -p ${MOUNT_POINT}
	fi
	
    mount -t vfat ${DEV_NAME} ${MOUNT_POINT}
    if [[ $? -ne 0 ]];then 
        return 1
    fi
	dd if=/dev/urandom of=${MOUNT_POINT}/image bs=1M count=2
	md5sum ${MOUNT_POINT}/image | cut -d\  -f1 > ${MOUNT_POINT}/image.md5

    cp ${MOUNT_POINT}/image ${MOUNT_POINT}/image_copy && sync
	local image_md5=$(cat ${MOUNT_POINT}/image.md5)
	local image_copy_md5=$(md5sum ${MOUNT_POINT}/image_copy | cut -d\  -f1)
	rm ${MOUNT_POINT}/image_copy
	rm ${MOUNT_POINT}/image
	rm ${MOUNT_POINT}/image.md5

	if [[ ${image_md5} != ${image_copy_md5} ]]; then
		return 1
	fi
	umount  /tmp/cf
	return 0
}

dev_exit() {
    rmmod pata_samsung_cf
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
