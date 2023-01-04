#!/bin/bash

# It is better to have all your plugins reqired tool's within the tools file
# and have this file simply a redierct to the requsted tool

# It is worthy to note that argumemts are shifted 1 off from the normal place
# So Arg 1 is Arg 2, Arg 2 is Arg 3 and so On and so forerth
# This is do to the way that mikua handles aguments and plugins
# Altho it is best to handel most operations within the requseted file
# This helps prevent the argument shift making it hard to read

# In this example you run the command $mikua helloworld hello

# This case statement lets mikua select in requseted tool within the plugin


# Note that this is an important part of plugins as due to the fact the user can set a custom name for the fumnction 
# and that all reltive path are reltive to build-tools your program may not know what the path is
# Therefore we use this function to find out the path
# What it does is removes the last 8 charters from the from the $0 varible which is the path to the running file
# the -8 in this removes the main.sh part from the running file path allowing it to know the the full path
# So we will use $loc before any calls that are ment to be reltive to your plugin such as how the hello.sh and foo.sh 
# file calls
# If you need to call files in another tool you will have change to minus amount 

loc=`echo "${0::-8}"`

case $2 in

    "hello" )

        $loc/tools/hello.sh $3 $4 $5 $6 $7 $8 $9

       # Here is the $loc varible in use call the hello.sh file in the tools diretory

    ;;

    "foo" )

        $loc/foo.sh $3 $4 $5 $6 $7 $8 $9

    ;;

    * )

        echo "Invaild Request"

    ;;

esac
