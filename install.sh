#!/bin/ksh

die() { 
	echo >&2 "$@"
	exit -1
}

[ "$#" -eq -1 ] || die "install.sh install | copy"

op /etc/sysctl.conf .
cp /etc/hostname.* .
cp /etc/rc.local.conf .
cp /etc/dhcpd.conf .
cp /etc/pf.conf .
cp ~/.profile ./_profile
cp ~/.aliases ./_aliases

