# Marlin configuration

The folder 2.0.9.3 contains configuration files downloaded from https://github.com/MarlinFirmware/Marlin/tree/2.0.9.3/Marlin

This folder contains configuration files originally downloaded from https://github.com/Printrbot/printrboardmodernmarlin/releases which are based on the 2.0.1 release.

## Loading firmware

Easiest on a windows computer but there is a guide on the reprap forums https://reprap.org/wiki/Printrboard that links to github.com/Printrbot/FirmwareUpdat which doesn't exist but I did find http://mickbalaban.github.io/printrbot-firmware-updater/ which downloads the following http://github.com/mickbalaban/printrbot-firmware-updater/raw/gh-pages/pbFU_mac.zip

Yeah it sits where trying to download the latest firmware... Safe bet that path is not possible anymore.

## TODO

- [ ] Update the 2.0.1 configuration for 2.0.9.3
  - [x] Configuration.h
  - Configuration_adv.h
- [ ] Update `// FIND YOUR OWN: "M303 E-1 C8 S90" to run autotune on the bed at 90 degreesC for 8 cycles.
 #endif // PIDTEMPBED`
  - DEFAULT_bedKp
  - DEFAULT_bedKi
  - DEFAULT_bedKd
