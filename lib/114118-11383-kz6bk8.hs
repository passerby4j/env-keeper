
#主程序

standard=././conf/standard.keeper
if [ -f $standard ];
	then
	while read line
	do
		line=`echo $line|tr '\t' ' '|tr -s ' '`
		arr=($line)
		echo ${#arr[@]}
		if [[ ${#arr[@]} > 2 ]];
			then
			error "there is a error in the $line of the file[$standard]"
		fi
	done < $standard
fi


function load(){
	findHomeDir=($(find $SOFT_HOME -type d -maxdepth 1))
	echo ${#findHomeDir[@]}


}
