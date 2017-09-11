#! /bin/sh

dev_init() {
	return 0
}

dev_test() {
	rtdate -l
	if [ $? -ne 0 ];then
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
