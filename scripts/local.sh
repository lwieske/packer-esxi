#!/bin/sh

vnic0_mac=$(esxcli --formatter csv network nic list | grep vmnic0 | awk -F, '{print $5}')
vmk0_mac=$(esxcli --formatter csv network ip interface list | grep vmk0 | awk -F, '{print $2}')

if [ "$vnic0_mac" != "$vmk0_mac" ] ; then
  esxcli network ip interface remove -i vmk0

  esxcli network ip interface add -i vmk0 -M $vnic0_mac -p "Management Network"

  esxcli network ip interface ipv4 set -i vmk0 -t dhcp
fi
