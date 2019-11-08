function lookForLib() {
	path="$1" ; name="$2" ; specificFile="$3"
	if [ -f "${path}/${specificFile}" ]
	then
		echo "${name} found in ${path}"
	else
		echo "*** ERROR *** : ${name} were not found in ${path}, please edit this script" ; exit -1
	fi
}