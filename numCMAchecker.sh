#!/bin/sh



# numCLAchecker.sh
# Kellen Haas
# CPSC 4240
# Activity 2

echo "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
echo "Welcome to command line argument checker. "
echo "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"

if [ $# -eq 0 ]; then
    echo "\nError: zero command line arguments passed. Must have at least 1 argument.\n"
    exit 99

else
    echo "\nTotal number of arguments passed: $#"

fi

    echo "\nArguments: \n"
    for arg in $@;
    do
        if [ -d $arg ]; then
            echo " | $arg is a directory |\n"
        else if [ -f $arg ]; then
            echo " | $arg is a file |\n"
        else
            echo "Couldn't find $arg."

    fi
fi
done
