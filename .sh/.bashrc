
command_not_found_handle()
############################################################
# The purpose of this function is to enable the ability to
# run bash commands from anywhere without having to type the 
# .sh extension.
#
# Setup Requirements:
#   * The .sh files must reside in any of the windows $PATH 
#     environment variables, so it must be configured first
#
#   * This file must be placed in the BASH working directory
#     usually this would be: c:/users/<username>
#
############################################################
{
	cmd=$1
	args=( "$@" )
	file_status="false"
	dir=""
		
	if [ "$cmd" == "orig_command_not_found_handle" ]; then
		exit;
	else
		IFS=':'     # colon (:) is set as delimiter
		read -ra path <<< "$PATH"   # split $PATH into an array as tokens separated by IFS (stored as path variable)
		for i in "${path[@]}"; do   # access each element of array
			for file in $i/$cmd.exe $i/$cmd.com $i/$cmd.bat $cmd.sh
			do
				[ -f $i/$file ] && { file_status="true"; dir=$i; break;}
			done
		done
		
		if [ "$file_status" == "true" ]; then
			IFS=' '			
			command=$(echo "${args[@]}" | sed "s/$cmd/$file/")  # perform string replacement using sed
			# execute the command..
			$dir/$command
			return
		else
			# if we are unable to find the respective commands
			echo "error: -- command not found --"
		fi
		
		IFS=' '     # reset to default value after usage
	fi


} 

eval $(echo orig_command_not_found_handle)