#!/bin/sh

export PX4_SIM_MODEL="aerosim_x500_v2"
export PX4_SYS_AUTOSTART=22001

make px4_sitl_aerosim
make px4_sitl_aerosim none

# cd build/px4_sitl_amie/rootfs/
# ../bin/px4 -s etc/init.d-posix/rcS_aerosim

# cd $WORKSPACE_DIR
unset PX4_SIM_MODEL
unset PX4_SYS_AUTOSTART
