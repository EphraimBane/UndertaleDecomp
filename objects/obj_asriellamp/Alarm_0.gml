snd_play(snd_noise)
if (__background_get(BG_PROP_VISIBLE, 1) == true)
{
    __background_set(BG_PROP_VISIBLE, 0, true)
    __background_set(BG_PROP_VISIBLE, 1, false)
    idealvolume[0] = 0
    idealvolume[1] = 1
}
else
{
    __background_set(BG_PROP_VISIBLE, 0, false)
    __background_set(BG_PROP_VISIBLE, 2, false)
    __background_set(BG_PROP_VISIBLE, 1, true)
    idealvolume[0] = 1
    idealvolume[1] = 0
}
myinteract = 0
global.interact = 0
