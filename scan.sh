#!/usr/bin/env bash

if [ $# -eq 1 ]; then
	sudo nmap -sS --max-retries 5000 -n -Pn -p- 192.168.15.4 -oG portss
    export PUERTOS=$(cat portss | grep -o -E "([0-9])+/open" | tr -d '/open' | sed 'H;1h;$!d;x;y/\n/,/')
    echo $PUERTOS
    sudo nmap -sCV -T4 -p$PUERTOS --script=vuln $1
else
    echo "Uso: ./scan.sh <ip>"
fi
