#!/bin/sh
################################################################################################
###                                                                                          ###
###   Fix for enp0s31f6                                                                      ###
###                                                                                          ###
################################################################################################
echo "Start"
cp /etc/sysconfig/network-scripts/ifcfg-ens33 /etc/sysconfig/network-scripts/ifcfg-ens33.bkup 
cp /etc/sysconfig/network-scripts/ifcfg-ultralink /etc/sysconfig/network-scripts/ifcfg-utlralink.bkup 
join -a 1 /etc/sysconfig/network-scripts/ifcfg-ens33 /etc/sysconfig/network-scripts/ifcfg-ultralink | awk -v ad="ADDR" '{if (match ($NF,ad)==0) {print $NF}}' | awk -v ad="GATE" '{if (match ($NF,ad)==0) {print $NF}}'D | sed -e "s/dhcp/none/g" | sed -e "s/ens33/enp0s31f6/g">> /etc/sysconfig/network-scripts/ifcfg-enp0s31f6
cat /etc/sysconfig/network-scripts/ifcfg-enp0s31f6

