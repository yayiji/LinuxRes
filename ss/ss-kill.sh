#!/bin/bash

sudo pkill -9 -f ss-go
sudo pkill -9 -f ssserver

sudo netstat -lpntu

exit
