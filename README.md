# Add your EECS Cycle Server to Local Filesystem (Mac)

1. Install sshfs and osxfuse from Homebrew - instructions can be found online.
2. Create a script file `<whatever_you_want>.sh` or `<whatever_you_want>` and place it in `/usr/local/bin/`.
3. Inside the script add this:
```
#!/bin/bash
DIR="/Volumes/EECS"
if [[ -f $DIR ]]; then
    echo "<PASSWORD>" | sshfs <username>@cycle1.eecs.ku.edu:/home/<username> /Volumes/EECS -o volname=EECS -o password_stdin
else
    mkdir /Volumes/EECS
    echo "<PASSWORD>" | sshfs <username>@cycle1.eecs.ku.edu:/home/<username> /Volumes/EECS -o volname=EECS -o password_stdin
fi
```
4. Lastly open your .profile and add somewhere

`alias start_eecs='sh /usr/local/bin/<whatever_you_want>'`

or

`alias start_eecs='sh /usr/local/bin/<whatever_you_want>.sh'`.

Now voila, you can just type start_eecs and mount your cycle server account into your Filesystem.
