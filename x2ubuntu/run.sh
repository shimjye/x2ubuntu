#!/bin/bash
if [ ! -f /.root_pw_set ]; then
	/set_root_pw.sh
fi

/etc/init.d/dbus start
/usr/sbin/sshd -D

exit 0
