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

<<<<<<< HEAD
notify-send -u critical -i appointment-soon.png "***REMINDER***" "\n$(todo -G --sort done,priority)"
=======
DISPLAY=:0 notify-send -i appointment-soon.png "***REMINDER***" "\n$(todo -G --sort done,created)"
>>>>>>> b21ce16d8e7dc556cddbad877611bbe0a5f982f2

echo "End of script";
