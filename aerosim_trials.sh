#!/bin/sh

export PX4_SIM_MODEL="aerosim_x500_v2"
export PX4_SYS_AUTOSTART=22001

make px4_sitl_aerosim
cd /home/pstrauch/ws/PX4-Autopilot/build/px4_sitl_aerosim/rootfs
/home/pstrauch/ws/PX4-Autopilot/build/px4_sitl_aerosim/bin/px4 -d

unset PX4_SIM_MODEL
unset PX4_SYS_AUTOSTART
