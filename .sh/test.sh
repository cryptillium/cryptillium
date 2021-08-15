

if [ "$1" == commit ]; then
    if [ "$2" == "" ]; then
        echo "error: -- missing commit message --"
    else
        git add .
        git commit -am "$2"
    fi
else
    echo "error: -- argument missing --"
    echo "usage:  [commit < comment > ]"
fi
