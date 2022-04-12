#!/bin/bash
# Author: Tomas Goldsack
# https://drive.google.com/uc?id=1BSvdQmzhJYsO_WF1vEClGOMBb8tkgYdl&authuser=0&export=download

# fileid="1BSvdQmzhJYsO_WF1vEClGOMBb8tkgYdl"
# filename="data.zip"
# curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
# curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

# wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=${fileid}' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=${fileid}" -O ${filename} && rm -rf /tmp/cookies.txt

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1BSvdQmzhJYsO_WF1vEClGOMBb8tkgYdl' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1BSvdQmzhJYsO_WF1vEClGOMBb8tkgYdl" -O data.zip && rm -rf /tmp/cookies.txt
