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


# make sure you use todo -GA
echo "Script ran at $(date)";


# check if todo file exists
result_path="/tmp/todo"
backup_path="/tmp/todo.tmp"

# check to see if todo has changed or not
echo "$(todo -G --sort done,created)" | tee $backup_path

diff $result_path $backup_path
rval=$?

if [[ $rval -ne 0 ]]
then
    cp $backup_path $result_path
    notify-send -u critical -i appointment-soon.png "***REMINDER***" "\n$(cat $result_path)"
fi
rm -f $backup_path

echo "End of script";
