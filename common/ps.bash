#!/bin/bash

# AUTHOR : Arnob kumar saha
# Date created : 07-11-2022
# Lase modified : 07-11-2022

# DESCRIPTION : This script will show some stuffs that can be done using ps.
# USAGE : ./ps.bash

ps # without options show only those processes that are accociated with particular terminal session.

# There is two style:
    # 1) unix style : ps -aux
    # 2) bsd style : ps aux

ps -He                 # H for hiararchy,  -e for all
ps -aux                # Good to find out which process taking more cpu or memory
ps -axjf
ps auxww               # List all running processes including the full command string

ps --user $(id -u) -F  # List all processes of the current user in extra full format
ps --user $(id -u) f   # List all processes of the current user as a tree
ps -o ppid= -p {{pid}} # Get the parent PID of a process:
ps --sort size         # Sort processes by memory consumption


#############
H for hiararchy
u for user oriented format
w for width unlimited
j for job control format
f for forest (tree representation)

