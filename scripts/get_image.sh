#!/bin/bash

wget https://faust.cs.fau.de/files/faustctf/2020/vulnbox.qcow2.gpg
echo "Im g0nna hav3 t0 sc13nc3 th3 sh1t 0utta th1s" | gpg --passphrase-fd 0 --decrypt-files vulnbox.qcow2.gpg
