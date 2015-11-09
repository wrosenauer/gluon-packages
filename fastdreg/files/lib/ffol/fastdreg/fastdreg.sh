#!/bin/sh
. /lib/functions.sh

# FIXME: site.conf or site.mk ???
keysrv="https://site.freifunk-neuendettelsau.de"

regdone=$(uci get fastdreg.ffol.regdone)
if [ "$regdone" -eq "1" ] ; then exit 0 ; fi
vpn=$(uci get fastd.mesh_vpn.enabled)
if [ "$regdone" -ne "1" ] ; then exit 0 ; fi

hostname=$(uci get system.@system[0].hostname)
pubkey=$(/etc/init.d/fastd show_key mesh_vpn)

reg=$(wget -T15 "$keysrv/router-anmelden/node.php?hostname=$hostname&key=$pubkey" -O -)
if [ "$reg" == "regdone" ]; then
	uci set fastdreg.ffol.regdone=1
	uci commit
fi

exit 0
