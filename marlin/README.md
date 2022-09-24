# Marlin configuration

The hex file here is for a simple metal (152x152x152) with heated bed and an 8mm z-axis.  It also includes the auto-fan for when I upgrade from the Ubis 13 to 13s.

The folder 2.0.9.3 contains configuration files downloaded from https://github.com/MarlinFirmware/Marlin/tree/2.0.9.3/Marlin

This folder contains configuration files originally downloaded from https://github.com/Printrbot/printrboardmodernmarlin/releases which are based on the 2.0.1 

I built the Configuration.h and Configuration_adv.h by diffing the 2.0.1 files with the reference 2.0.9.3 files and manually applying the changes. You can diff the files here to see what changed. The hex file was then built using the vscode marlin plugin.

UPDATE: the hex file for the bugfix-2.0.x branch has been moved into that folder.  This is the pattern I'll run with moving forward.  

## Loading firmware

Easiest on a windows computer but there is a guide on the reprap forums https://reprap.org/wiki/Printrboard that links to github.com/Printrbot/FirmwareUpdat which doesn't exist but I did find http://mickbalaban.github.io/printrbot-firmware-updater/ which downloads the following http://github.com/mickbalaban/printrbot-firmware-updater/raw/gh-pages/pbFU_mac.zip

Yeah it sits there trying to download the latest firmware... Safe bet that path is not possible anymore.

So best bet is to get a winblows PC, install the Atmel updater (and JVM) and do it there. The details at [www.jdwallace.com](https://www.jdwallace.com/post/printrbot-simple-metal-marlin2) are spot on.
