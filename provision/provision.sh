while read -u 3 BUFFER
do
    echo $BUFFER
    if [[ $BUFFER == *"Debian GNU/Linux 10 vulnbox"* ]]; then
        echo "${USERNAME}\n" >&4;
    fi
    if [[ $BUFFER == *"Welcome to your brand new FAUST CTF Vulnbox!"* ]]; then
        echo "${TEAM_NO}\n" >&4;
    fi
    if [[ $BUFFER == *"See https://faustctf.net/information/setup/ for more information."* ]]; then
        echo "separate\n" >&4;
    fi
    if [[ $BUFFER == *"root@vulnbox:~#"* ]]; then
        echo "shutdown -h now" >&4;
        break;
    fi
done