#!/bin/bash

# AUTHOR : Arnob kumar saha
# Date created : 11-06-2022
# Lase modified : 11-06-2022

# DESCRIPTION : This holds some shortcuts and tricks for terminal usage.
# USAGE : ./tricks.sh


cd - # cd to the prevoius directory
ctrl + L # clear the terminal, scrolling the mouse to above is possible though

pushd <dir> # cd to <dir> & pushes <dir> on a stack, to later cd into that using popd
popd # cd to the stack's top directory & pod that from stack

ctrl + z # suppose you are editing on vim & u for some reason want to go back to your current terminal
# without saving ow quitting the editing file
fg # (foreground) to again get back to editing

sudo !! # exexute the last command with sudo previledges
ctrl + r # search some previous running command from terminal history

HISTTIMEFORMAT="%Y-%m-%d %T " # now `hostory` command will also show you the data-time of the command execution
!<ID from `history` command> # to execute a particular command from history

cmatrix # cool hacker-like background !
ctrl + shift + plusSign # to increase terminal font size
ctrl + minusSign # to decrease

ctrl + a # move cursor on the beginning of the current line
ctrl + e # move cursor on the end of the current line
ctrl + w # delete the last word
ctrl + u # delete the whole line

tail -f <file> # to watch last few lines of a continously-changing file
truncate -s 0 <file> # make this file size 0 (Delete everything from this file)
mount | column -t # 'column' command shows the output in column to look it better



