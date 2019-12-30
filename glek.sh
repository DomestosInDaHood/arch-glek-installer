#!/bin/bash
# glek.sh
# developed by ahharris email:<ahharris@tutanota.com> telegram:<@ahharris>
# This script is an unofficial installer of Arch Linux using dialog
# A manual installer is currently under development
# The plans include the addition of an automatic installation mode, with the ability to change the installation process through the configuration file

# Check boot mode
if ls /sys/firmware/efi/efivars &> /dev/null
then 
	bootMode=EFI
else 
	bootMode=BIOS
fi

# Internet connection
choice=1
dialog --backtitle "Internet connection" \
--radiolist "Select network interface (default=Ethernet)" 15 40 5 \
	1 Ethernet off \
	2 Wifi off 2> $choice
if $choice=1
then
	dialog --title "Ethernet connection" \
	--msgbox "Connect ethernet to the computer and press <ok>" 6 50
else 
	wifi-menu
fi
