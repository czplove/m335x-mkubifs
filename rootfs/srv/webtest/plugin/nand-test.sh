#! /bin/sh

TESTDIR=/opt/

dev_init() {

	dd if=/dev/urandom of=${TESTDIR}/image bs=1M count=2
	md5sum ${TESTDIR}/image | cut -d\  -f1 > ${TESTDIR}/image.md5

	return 0
}

dev_test() {
	cp ${TESTDIR}/image ${TESTDIR}/image_copy && sync
	local image_md5=$(cat ${TESTDIR}/image.md5)
	local image_copy_md5=$(md5sum ${TESTDIR}/image_copy | cut -d\  -f1)
	rm ${TESTDIR}/image_copy  && sync

	if [[ ${image_md5} != ${image_copy_md5} ]]; then
		return 1
	fi

	return 0
}

dev_exit() {
    rm -fr ${TESTDIR}/image  && sync
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
