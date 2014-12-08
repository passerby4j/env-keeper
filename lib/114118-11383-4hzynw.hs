function indexOf(){
	info "======================="
	arr=$1
	val=$2
	for var in ${arr[@]};
	do
		echo "myval=$var"
	done
}

#主程序
function load(){
	info "SOFT_HOME=$SOFT_HOME"
	#find the soft directory in the soft home
	findHomeDir=($(find $SOFT_HOME -maxdepth 1 -type d))
	dirCount=${#findHomeDir[@]}
	if [ $dirCount = 0 ];
	then
	  info "Don't any directory in the $SOFT_HOME"
		exit 0
  fi

	for var in ${findHomeDir[@]};
	do
		echo "oh=$var"
	done


  declare -A env_result

	standard=././conf/standard.keeper
	if [ -f $standard ];
	then
		while read line
		do
			line=`echo $line|tr '\t' ' '|tr -s ' '`
			arr=($line)

      arr_Len=${#arr[@]}
			if [[ $arr_Len > 2 ]];
			then
				falt "there is a error in the $line of the file[$standard]"
			else
				
				if [[ $arr_Len = 2 ]];
					then
				fi
			fi

		done < $standard
	fi

}
