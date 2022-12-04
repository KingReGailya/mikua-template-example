This is an example of a repo for
mikua plugins and template

The "plugin" directoy is to store plugins
and "template" is to store templates 

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

Making a template

    Tamplates are easyer then plugins as they mainly invole command arugment's for Yt-dlp
    fist to understand list compile order that way you know where to put your code.
    Whenever you compile a list it compiles in this order, kinda like a burger

    .opening 
    varibles 
    frames
    .ending

    If you have any script you can put in .opening where is will run any frames are run 
    and before all varible are deffined as such it is not recomened to put it .opening.
    If you script rquires and static varible it is recomened to add them to the varibles file
    It is reccomened to put any custom scripting within the .ending file as then all varibles 
    are decleared and at your disposal. In addtion if you script needs any not inclueded programs
    you will need to install them at during the running of the script. therefore you will
    have to put an apt install -y within the script which recomened to put it in the .opening file

