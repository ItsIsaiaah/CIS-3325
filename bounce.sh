#!/bin/sh

ifconfig eth0 down
ifconfig eth1 down
ifconfig eth0 up
ifconfig eth1 up

ping 10.0.0.13