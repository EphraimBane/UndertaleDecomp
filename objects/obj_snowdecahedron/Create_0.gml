script_execute(scr_depth, 0, 0, 0, 0, 0)
myinteract = 0
image_xscale = 1
image_yscale = 1
murder = 0
if (scr_murderlv() >= 3)
    murder = 1
if (FL_SparedSpecific == 1)
    murder = 0
if (FL_TundraKillsCounter >= 16)
    murder = 1
