# update / push all committed changes for all directories from parent
if [ "$1" == "--force" ]; then
    find . -maxdepth 1 -type d -name .git -execdir echo $(git push "$1") \;
else
    find . -maxdepth 1 -type d -name .git -execdir git push;
fi




