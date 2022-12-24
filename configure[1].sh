#!/bin/bash

sleep 2

nmcli connection show

sleep 1
nmcli connection add con-name mac ifname ens33 type ethernet
sleep 3
nmcli connection modify mac ipv4.addresses 172.10.24.20/24 ipv4.gateway 172.10.24.250 ipv4.dns 172.10.24.250 ipv4.method static
sleep 3
nmcli connection show 
sleep 2
nmcli connection up mac
sleep 2
systemctl restart network
sleep 5
nmcli connection up mac
sleep 2
nmcli connection show


