#!/bin/sh

sudo ifconfig eth1 192.168.1.10
sudo ifconfig eth1 netmask 255.255.255.0
sudo ifconfig eth1 broadcast 192.168.1.255
sudo route add default gw eth1
