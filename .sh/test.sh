

if [ $1 == commit ]; then
    git add .
    git commit -am "$2"
fi
