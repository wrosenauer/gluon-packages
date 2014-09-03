#!/bin/sh
. /lib/functions.sh

keysrv="http://37.120.161.165"

hostname=$(uci get system.@system[0].hostname)

pubkey=$(/etc/init.d/fastd show_key mesh_vpn)

regdone=$(uci get fastdreg.ffol.regdone)

if [ "$regdone" -ne "1" ]; then
	reg=$(wget -T15 "$keysrv/reg.php?name=$hostname&key=$pubkey" -O -)
	if [ "$reg" == "regdone" ]; then
		uci set fastdreg.ffol.regdone=1
		uci commit
	fi
fi
