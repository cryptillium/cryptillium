# update / push all committed changes for all directories from parent
find . -maxdepth 1 -type d -name .git -execdir git push \;