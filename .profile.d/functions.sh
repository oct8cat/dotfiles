function ave {
    if [ -z $1 ]; then
        echo "Usage: ave <name>"
        return 0
    fi
    V=$HOME/v/$1/bin/activate
    if ! [ -f $V ]; then
        echo "$1: Not found."
        return 1
    else
        source $V
    fi
}
