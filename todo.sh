#!/bin/bash
######################################################################
# Author: Esaad Afaque & Hao Qi
# Date Created: August 5, 2015
# Usage: ./todo.sh
# Purpose: Add to cron job to send notifications for pending tasks
# Check variables: todo_path ; backup_path
# Support : Linux
# Requirements : bash
# Version: 1.0
# Last Updated: August 5, 2015 by Esaad 
#####################################################################



echo "Script ran at `date`";


# check if todo file exists 
todo_path="$HOME/todos/tod.txt";
backup_path="$HOME/todos/todo.txt.tmp";

# small check to create backup path if user forgets to create
if [ ! -d "$backup_path" ]; then
    # Control will enter here if $backup_path doesn't exist.
    echo "**** TODO FILE DOES NOT EXIST ****"
    echo "**** CREATING TODO FILE: $backup_path ****"
    echo `todo` > $backup_path;
    chmod 777 $backup_path; 
fi

# check to see if todo has changed or not

echo "`todo`" > $todo_path;

DIFF=$(diff $todo_path $backup_path) 
if [ "$DIFF" != "" ] 
then
    echo "The directory was modified"
    notify-send -u critical -t 1 -i appointment-soon.png "***REMINDER***" "`cat $todo_path`"
fi

echo "End of script";