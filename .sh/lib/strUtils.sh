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


export -f indexOf