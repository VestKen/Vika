#!/bin/bas
if [user say name ]
        then
                run hosthame

                fi
                if [user say operating system]
                then
                        run uname
                fi
                if [ user say mamory]
                then
                        run lshw -class memory | grep size
                fi
echo "Hi, here is information about:"
echo "operating system"
uname
echo "mane of computer"
hostname
echo "how much memory you have"
lshw -class memory | grep size
