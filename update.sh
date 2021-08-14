
#    special variables
#    $0 - The name of the Bash script.
#    $1 - $9 - The first 9 arguments to the Bash script. (As mentioned above.)
#    $# - How many arguments were passed to the Bash script.
#    $@ - All the arguments supplied to the Bash script.
#    $? - The exit status of the most recently run process.
#    $$ - The process ID of the current script.
#    $USER - The username of the user running the script.
#    $HOSTNAME - The hostname of the machine the script is running on.
#    $SECONDS - The number of seconds since the script was started.
#    $RANDOM - Returns a different random number each time is it referred to.
#    $LINENO - Returns the current line number in the Bash script.

# k=$(awk '{print index(" d ddf d ee ", "dd")}')
# for i in *.txt; do echo "hello $i"; done


a="The cat sat on the mat"
fileRef=".git"

# function to return the index of a substring
# usage: indexOf (< target string >,  <substring>)
indexOf() { 
  x="${1%%$2*}"
  [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}


function F3()
{
    local arg1=$1
   
    if [[ $arg1 != "" ]];
    then
        retval="BASH function with variable"
    else
        echo "No Argument"
    fi
}




f=$(find ./ -type d -name ".git")
for p in $f
do
    #$command
    # (cd "$f" && $command)
    $(printf "$p")
    eIdx=$(indexOf "$p" "$fileRef")
    folder=${p:0:$eIdx} 
    echo "$folder"."xx"


done

