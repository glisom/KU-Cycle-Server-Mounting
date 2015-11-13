#!/bin/bash
DIR="/Volumes/EECS"
if [[ -f $DIR ]]; then
    echo "<PASSWORD>" | sshfs <username>@cycle1.eecs.ku.edu:/home/<username> /Volumes/EECS -o volname=EECS -o password_stdin
else
    mkdir /Volumes/EECS
    echo "<PASSWORD>" | sshfs <username>@cycle1.eecs.ku.edu:/home/<username> /Volumes/EECS -o volname=EECS -o password_stdin
fi
