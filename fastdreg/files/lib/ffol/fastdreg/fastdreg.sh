#!/bin/sh
. /lib/functions.sh

keysrv="http://vpn.freifunk-ol.de"

hostname=$(uci get system.@system[0].hostname)

pubkey=$(/etc/init.d/fastd show_key mesh_vpn)

regdone=$(uci get fastd.regdone)

if [ -z $regdone ]; then

        reg=$(wget -T15 "$keysrv/reg.php?name=$hostname&key=$pubkey" -O -)
        if [ "$reg" == "regdone" ]; then
                uci set fastd.regdone=1
        fi

fi
