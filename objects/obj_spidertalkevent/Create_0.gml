image_yscale = 6
active = false
FL_AreaKillsPointer = 205
if (FL_FoughtMuffet < 5 && global.tempvalue[11] > 0)
    FL_FoughtMuffet = 5
con = FL_FoughtMuffet
x += (FL_FoughtMuffet * 90)
pausewait = 0
pausewaittime = 0
if (global.plot > 164)
{
    instance_destroy()
    return;
}
murder = 0
if (scr_murderlv() >= 12)
    murder = 1
