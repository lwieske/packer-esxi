#!/bin/sh

DEPOT=https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml

esxcli system settings advanced set -o /Net/FollowHardwareMac -i 1

esxcli network firewall ruleset set --enabled yes --ruleset-id httpClient

esxcli software profile update -d ${DEPOT} -p ESXi-5.5.0-${PROFILE}-standard
