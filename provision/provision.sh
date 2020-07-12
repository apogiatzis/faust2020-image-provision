#!/bin/bash

while read -u 3 BUFFER
do
    echo $BUFFER
    if [[ $BUFFER == *"Debian GNU/Linux 10 vulnbox"* ]]; then
        printf "${USERNAME}\n" >&4;
    fi
    if [[ $BUFFER == *"Welcome to your brand new FAUST CTF Vulnbox!"* ]]; then
        printf "${TEAM_NO}\n" >&4;
    fi
    if [[ $BUFFER == *"(One key per line, to finish enter an empty line)"* ]]; then
        printf "\n" >&4;
    fi    
    if [[ $BUFFER == *"See https://faustctf.net/information/setup/ for more information."* ]]; then
        printf "separate\n" >&4;
    fi
    if [[ $BUFFER == *"root@vulnbox:~#"* ]]; then
        printf "shutdown -h now" >&4;
        break;
    fi
done