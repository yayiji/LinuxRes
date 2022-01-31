#!/bin/bash

sudo pkill -9 -f ss-go
sudo pkill -9 -f ssserver

sleep 1

sudo ./app/ss-go -s 'ss://chacha20-ietf-poly1305:111qqqwwweee@:55505' &
sudo ./app/ssserver -d -c ./ss-config.json

sleep 1

sudo netstat -lpntu

exit

