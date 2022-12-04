#!/bin/bash
 
# It is better to have all your plugins reqired tool's within the tools file
# and have this file simply a redierct to the requsted tool

# It is worthy to note that argumemts are shifted 2 off from the normal place 
# So Arg 1 is Arg 3, Arg 2 js Arg 4 and so On and so forerth 
# This is do to the way that mikua handles aguments and plugins 
# Altho it is best to handel most operations within the requseted file
# This helps prevent the argument shift making it hard to read

# In this example you run the command $mikua helloworld hello

# This case statement lets mikua select in requseted tool within the plugin

case $3 in

    "hello" )

        ../build-custom/.custom-tools/$2/tools/hello.sh $3 $4 $5 $6 $7 $8 $9
        
        # Note all relitive file paths are reltitve to the build-tools directory 
        # Hence the "../" at the start of the request 
        # Also note due to the support of changing the plugin name Arg 2 should be used 
        # instead of the default name

    ;;

    "foo" )
        ../build-custom/.custom-tools/$2/tools/foo.sh $3 $4 $5 $6 $7 $8 $9
    ;;

    * ) 
        echo "Invaild Request"
    ;;

esac 