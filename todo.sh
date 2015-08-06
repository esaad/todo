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

notify-send -u critical -i appointment-soon.png "***REMINDER***" "\n$(todo -G --sort done,created)"

echo "End of script";
