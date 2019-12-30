#!/bin/bash

# Необходим для вывода кирилицы в консоль
setfont cyr-sun16

# Проверка загружаемого режима
if ls /sys/firmware/efi/efivars
then 
	bootMode = "efi"
	echo "Archiso загружен в режиме EFI"
else 
	bootMode = "bios"
	echo "Archiso загружен в режиме BIOS"
fi
