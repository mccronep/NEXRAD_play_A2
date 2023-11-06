#!/bin/bash

# This script is a "wrapper" shell script to facilitate running the est_comms_link.py
# Python script from the RPG scripts directory.
#
#
#
if grep -q "7.9" /etc/redhat-release ; then
        echo 'RHEL7'
        /usr/bin/python3 /home/pmccrone/python/src/play_a2/play_a2_sb_v0.py
else
        echo 'RHEL8 or higher'
	/usr/bin/python3 /home/pmccrone/python/src/play_a2/play_a2_sb_v0.py
fi


