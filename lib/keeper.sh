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
				tmp_path=None
				for var in ${findHomeDir[@]};
				do
					 ret=$(echo $var|grep -i ${arr[0]})
					 if [[ "$ret" != "" ]];
					 then
					tmp_path=$var
							break
					 fi
				done
				echo $tmp_path
				home_name=${arr[0]}
				if [[ $arr_Len = 2 ]];
				then
				  home_name=${arr[1]}
				fi
				home_name=$(echo $home_name|tr '[:lower:]' '[:upper:]')
				home_name="${home_name}_HOME"
				echo $home_name
			fi

		done < $standard
	fi

}
