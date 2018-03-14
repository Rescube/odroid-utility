#!/bin/bash

# Some variables.
REBOOT=0
DATE=`date +%Y.%m.%d-%H.%M`

# Load the scripts
source $_B/extras.sh
source $_B/fs_resize.sh
source $_B/hdmi.sh
source $_B/kernel_update.sh
source $_B/xbmc_setup.sh
source $_B/xorg_config.sh
source $_B/armsoc.sh
source $_B/change_hostname.sh
source $_B/lirc_setup.sh
source $_B/odroidc_hdmipass.sh
source $_B/pulseaudio_control.sh


# Get the board here
get_board

# mainmenu should be the last one :)
#source $_B/mainmenu.sh
do_kernel_update
do_firmware_update
do_bootscript_update
do_udev_update
do_bootloader_update
disable_xorg_at_boot
enable_pulse
rebuild_armsoc
do_resize

