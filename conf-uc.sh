#!/bin/sh

sudo ifconfig eth0 down
sudo ifconfig eth1 192.168.1.30/24
sudo ifconfig eth1 netmask 255.255.255.0
sudo ifconfig eth1 broadcast 192.168.1.255
sudo route add default gw 192.168.1.10
