
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


############################################################
# just demonstrating the use BASH to perform GIT updates   
# this module demonstrates the following:                  
#    - use of global variables
#    - use of arguments
#    - string and substring checks
#    - executing commands and assign output to a variable
#    - use of if else logic
############################################################


fileRef=".git"

# function to return the index of a substring
# usage: indexOf (< target string >,  <substring>)
indexOf() { 
  x="${1%%$2*}"
  [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}


# update / push all committed changes for all directories from parent
BASE=/f/fintech/cryptillium

push() { 
    cd $BASE
    # find . -maxdepth 2 -type d -name ".git" -execdir git push \;
    f=$(find . -maxdepth 2 -type d -name $fileRef)
    for p in $f
    do
        eIdx=$(indexOf "$p" "$fileRef")
        folder=${p:0:$eIdx} 
        $(cd $folder)
        echo "[ updating repository: $folder ]"
        echo "pushing changes.."
        echo "******************"
        $(git push)
        echo -e "\n"
        $(cd ..)
    done    

}

if [ "$1" == "--force" ]; then
    cd $BASE
    # $(find . -maxdepth 2 -type d -name ".git" -execdir  git push "$1" \;)
    f=$(find . -maxdepth 2 -type d -name $fileRef)
    for p in $f
    do
        eIdx=$(indexOf "$p" "$fileRef")
        folder=${p:0:$eIdx} 
        $(cd $folder)
        echo "[ updating repository: $folder ]"
        echo "pushing changes.."
        echo "*****************"
        $(git push $1)
        echo -e "\n"
        $(cd ..)
    done    
else
    push
fi




