#!/bin/bash

echo 
echo World 
echo 

# As you can see now the loc varible is the path to hello.sh 
# rather then the root of your plugin

loc=`echo ${0::-9}`
echo the curent active file is $0 and its folder path is $loc

