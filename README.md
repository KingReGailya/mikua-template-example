This is an example of a repo for
mikua plugins and template

The "plugin" directoy is store plugins 

Making a plugin 

    Plugins work by having a file with the name "main.sh" in your plugins root dir
    for the example in this repo main.sh acts as a rediect to other scripts
    much like the mikua file in /docker/build-info/build-tools act as a redirect 
    to the actual shell script file the command is requesting

    Remember while mikua can be ran in a Os it is made to be ran within docker 
    as such most of the time mikua will only be able to use the programs include
    within the ubuntu image or installed during the build procces 
    
    however you can mark your plugin ar reqiuring extra tools by adding a file called extras
    and put the apt packang name thats used to install it within that file
    see emample2 for example

