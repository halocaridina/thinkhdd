#
# Regular cron jobs for the thinkhdd package
#
0 4	* * *	root	[ -x /usr/bin/thinkhdd_maintenance ] && /usr/bin/thinkhdd_maintenance
