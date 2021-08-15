# Retrieve latest changes from all repositories
BASE=/f/fintech/cryptillium
cd $BASE
source "./.sh/lib/strUtils.sh"

fileRef=".git"


# find . -maxdepth 2 -type d -name .git -execdir git pull \;
for dir in $(find . -maxdepth 2 -type d -name ".git")
do
        eIdx=$(indexOf "$dir" "$fileRef")
        folder=${dir:0:$eIdx} 
        $(cd $folder)
        echo "[ retrieving repository: $folder ]"
        echo "pulling changes.."
        echo "******************"
        git pull
        echo -e "\n"
        $(cd ..)        
done