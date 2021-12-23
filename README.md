# Printrbot Simple Metal 1405
I purchased this printer in 2015 with the heated bed option.

Notes: Aluminium heated bed has quite a few high and low spots > 2 hundreads of a mm out. So I print first layer at 0.3 of a mm.

## Board 

currently a stock Rev F. I do plan on updating the firmware to a Marlin 2.0

Useful links:
- Board details - http://domoticx.com/mechanica-hardware-printrboard/
- Updating firmware 
  - https://www.jdwallace.com/post/printrbot-simple-metal-marlin2
  - https://github.com/Printrbot/Adaptrboard (note adaptrboard is a defunct project)
- Updating to an SKR board
  - https://github.com/Lob0426/Adaptrboard/wiki

## Power supply

[Currently using semi-modular power supply](https://www.amazon.com.au/gp/product/B08BX65LVY/ref=ppx_yo_dt_b_asin_title_o05_s00?ie=UTF8&psc=1) being honest I probably should have forked out and purchased a fully modular power supply but this works. I did have another powersupply but managed to loose it (moving home a few times)

I haven't manually jumped the power supply to get it to start as I have an [ATX breakout board](https://www.kickstarter.com/projects/141080940/atx-breakout-board-for-all-pc-power-supplys?ref=profile_created) that I purchased through kickstarter. 

## Heated bed

Currently using the Printrbot supplied heated bed. However I have read good things about some of the removable build plates and have a [150x150 Spring Steel Sheet Build Plate](https://www.aliexpress.com/snapshot/0.html?orderId=8143475876268766) on order and I'm hoping to mount this on top of the existing bed.

Note: kapton tape was the rage when I started printing and it was crap... so crap. I'm using buildtak at the moment and life is better.

## Z axis 

Replaced with a 4 stop 8mm lead screw, currently using the details at https://github.com/MS3FGX/PBSM_ZNUT however I like the remix at https://www.thingiverse.com/thing:2843592/files prior to this change I had obvious z-banding so it has been a nice update.

Other options of note: https://www.thingiverse.com/thing:2010572

## Hotend 

Currently still using the original UBIS 13 ceramic. Ubis 13s has been ordered and will be installed

useful links:
- Installing an automatic fan 
  - https://www.jdwallace.com/post/printrbot-fan
  - https://www.thingiverse.com/thing:559657
  - https://github.com/tormentist/Marlin/releases/tag/RevF-Version-5_E3Dv6
- Fan adapter for ubis 13s - https://www.youmagine.com/designs/printrbot-hot-end-fan


## Project information

- How to design an automata - https://www.instructables.com/Design-of-Automata/