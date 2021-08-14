# Retrieve latest changes from all repositories
find . -maxdepth 1 -type d -name .git -execdir git pull \;