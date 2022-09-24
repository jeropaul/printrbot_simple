# Printrbot Simple Metal
I purchased this printer in 2015 with the heated bed option.

Notes: Aluminium heated bed has quite a few high and low spots > 2 tenths of a mm out. So I print first layer at 0.3 of a mm.

## Board 

currently a Rev F printerbot board. Updated to Marlin 2.0.x using the details at jdwallace.com

Useful links:
- Board details - http://domoticx.com/mechanica-hardware-printrboard/
- Updating firmware 
  - https://www.jdwallace.com/post/printrbot-simple-metal-marlin2
  - https://github.com/Printrbot/Adaptrboard (note adaptrboard is a defunct project)
- Updating to an SKR board
  - https://github.com/Lob0426/Adaptrboard/wiki

## Power supply

[Currently using a semi-modular power supply](https://www.amazon.com.au/gp/product/B08BX65LVY/ref=ppx_yo_dt_b_asin_title_o05_s00?ie=UTF8&psc=1) being honest I probably should have forked out and purchased a fully modular power supply but this works.

I haven't manually jumped the power supply to get it to start as I have an [ATX breakout board](https://www.kickstarter.com/projects/141080940/atx-breakout-board-for-all-pc-power-supplys?ref=profile_created) that I purchased through kickstarter. 

## Heated bed / Build plate

Currently using the Printrbot supplied heated bed. However I have read good things about some of the removable build plates and have a [150x150 Spring Steel Sheet Build Plate](https://www.aliexpress.com/snapshot/0.html?orderId=8143475876268766) on order and I'm hoping to mount this on top of the existing bed.

Note: kapton tape was the rage when I started printing and it was crap... so crap. I'm using buildtak at the moment and life is better.

## Z axis 

Replaced with a 4 stop 8mm lead screw, currently using the details at https://github.com/MS3FGX/PBSM_ZNUT however I like the remix at https://www.thingiverse.com/thing:2843592/files prior to this change I had obvious z-banding so it has been a nice update.

Other options of note: https://www.thingiverse.com/thing:2010572

## Hotend 

I've swtiched over to the UBIS 13s from the original UBIS 13 ceramic. Good things so far and enough new tips to last for (hopefully) many years.

New fan for the hotend has been installed see [Installing automatic hotend](https://github.com/jeropaul/printrbot_simple/issues/1) for details.

useful links:
- Installing an automatic fan 
  - https://www.jdwallace.com/post/printrbot-fan
  - https://www.thingiverse.com/thing:559657
  - https://github.com/tormentist/Marlin/releases/tag/RevF-Version-5_E3Dv6
- Fan adapter for ubis 13s - https://www.youmagine.com/designs/printrbot-hot-end-fan


## Calibration guide for hotends height from bed

The magnetic base and (or) the spring steel pei sheet messes with the bed probe so I had to massively change the z calibration.

Note: These are for Marlin 2.0 

M501 - Load / print config

M851 - Z-2.2  (that was -0.6... so quite a difference)

M500 - Save config

## Drivers for the WIFI dongle (rtl8188eu)

So it looks like the gentleman that maintained http://downloads.fars-robotics.net/ gave up the ghost in late 2021 so no more pre-built drivers! good run though, amazing that he kept it up for something like 10 years. The internet is kept working on the back of people like that.

Anyway to build it from source use the details at https://github.com/RPi-Distro/rpi-source#tp-link-tl-wn725n-version-2-lwfinger

And as always be prepared to wait... 

Than I needed to change the driver used by wpa_supplicant (I had to find that from [stack-exchange](https://raspberrypi.stackexchange.com/questions/116657/raspberry-pi-wifi-scan-working-but-cannot-connect-to-wifi)

```
sudo wpa_supplicant -i wlan0 -D wext -c /etc/wpa_supplicant/wpa_supplicant.conf -d
```

So to make this permanent we need to add the following to `/etc/dhcpcd.conf`

```
env ifwireless=1
env wpa_supplicant_driver=wext
```

## Project information

- How to design an automata - https://www.instructables.com/Design-of-Automata/
