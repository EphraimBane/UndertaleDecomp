if (obj_mainchara.x > 220 && FL_PreCastleUnknown4 == 0 && con == 0 && global.interact == 0)
{
    global.interact = 1
    FL_PreCastleUnknown4 = 1
    con = 5
}
if (obj_mainchara.x > 360 && FL_PreCastleUnknown4 == 1 && con == 0 && global.interact == 0)
{
    global.interact = 1
    FL_PreCastleUnknown4 = 2
    con = 5
}
if (obj_mainchara.x > 480 && FL_PreCastleUnknown4 == 2 && con == 0 && global.interact == 0)
{
    global.interact = 1
    FL_PreCastleUnknown4 = 3
    con = 5
}
if (con == 5)
{
    snd_play(snd_hurtloox)
    dm = instance_create((obj_mainchara.x + 40), 220, obj_darkman_actor)
    dm.vspeed = -3
    con = 6
}
if (con == 6)
{
    if (dm.y < 130)
    {
        dm.vspeed = 0
        con = 7
        alarm[4] = 30
        snd_play(snd_break2)
    }
}
if (con == 8)
{
    global.mercy = 1
    if (FL_PreCastleUnknown4 == 1)
        global.battlegroup = 64
    if (FL_PreCastleUnknown4 == 2)
        global.battlegroup = 68
    if (FL_PreCastleUnknown4 == 3)
        global.battlegroup = 67
    con = 9
    FL_InBattle = 1
    instance_create(0, 0, obj_battler)
    alarm[4] = 34
}
if (con == 10)
{
    global.mercy = 0
    global.interact = 0
    with (obj_darkman_actor)
        instance_destroy()
    con = 0
}
