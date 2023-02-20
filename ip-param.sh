#!/bin/sh

sudo sysctl -w net.ipv4.ip_forward=1

sudo ifconfig eth1 down
sudo ifconfig eth1 up
sudo ifconfig eth1 down
sudo ifconfig eth1 up

sudo iptables -A FORWARD -i eth1 -j ACCEPT
sudo iptables -A FORWARD -o eth1 -j ACCEPT
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

sudo ifconfig eth1 down
sudo ifconfig eth1 up
sudo ifconfig eth1 down
sudo ifconfig eth1 up
