#!/bin/bash
######################################################################
# Author: Esaad Afaque & Hao Qi
# Date Created: August 5, 2015
# Usage: ./todo.sh
# Purpose: Add to cron job to send notifications for pending tasks
# Check variables: todo_path ; backup_path
# Support : Linux
# Requirements : bash, notify-osd, devtodo
# Version: 1.0
# Last Updated: August 5, 2015 by Esaad
#####################################################################

echo "Script ran at $(date)";

DISPLAY=:0 notify-send -i appointment-soon.png "***REMINDER***" "\n$(todo -G --sort done,priority)"

echo "End of script";
